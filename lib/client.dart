import 'dart:convert';

import 'package:app/api.dart';
import 'package:app/errors.dart';
import 'package:app/logger.dart';
import 'package:app/schema.dart';
import 'package:app/settings.dart';
import 'package:app/storage.dart';
import 'package:dio/dio.dart';
import 'package:isar/isar.dart';

class Client {
  static Isar db = Storage.db;
  static String? authToken;
  static String? refreshToken;
  static int logoutCounter = 0;

  static Dio connection = Dio(BaseOptions(
      baseUrl: Settings.backendURL,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1)));

  static Future<void> initialize() async {
    User? user = await db.users.get(1);
    authToken = user?.authToken;
    refreshToken = user?.refreshToken;
  }

  static Future<void> refresh() async {
    await initialize();
  }

  static Future<void> updateTokens(String authToken, refreshToken) async {
    User? user = await db.users.get(1);
    user?.authToken = authToken;
    user?.refreshToken = refreshToken;

    await db.writeTxn(() async {
      await db.users.put(user!); // insert & update
    });

    Client.authToken = authToken;
    Client.refreshToken = refreshToken;
  }

  static Future<void> refreshTokens() async {
    try {
      final response = await connection.post(BackendAPI.refreshTokenPath,
          data: jsonEncode({"jwt_refresh_token": refreshToken}));

      await updateTokens(
          response.data["jwt_auth_token"], response.data["jwt_refresh_token"]);

      return;
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode == 401) {
        logoutCounter = logoutCounter + 1;
        if (logoutCounter == Settings.maxHttpRetryOn401) {
          throw LogoutError("Max 401 is reached, Logging out!");
        } else {
          await refreshTokens();
        }
      }
      rethrow;
    }
  }

  static Future<Response<dynamic>> connect<T>(httpMethod, String path,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters,
      bool? isPublic,
      int counter = 0}) async {
    Options? options;

    if (counter == Settings.maxHttpRetry) {
      throw ApiError(
          message: "$httpMethod $path unreachable! Max Retry reached");
    }
    isPublic = isPublic ?? false;

    if (!isPublic) {
      if (authToken == null) await initialize();
      headers = headers ?? {};
      headers["Authorization"] = "Bearer $authToken";
    }

    if (headers != null) {
      options = Options(headers: headers);
    }

    Future<Response<T>> Function<T>(String path,
        {CancelToken? cancelToken,
        Object? data,
        Options? options,
        Map<String, dynamic>? queryParameters}) func;

    if (httpMethod == "get") {
      func = connection.get;
    } else if (httpMethod == "post") {
      func = connection.post;
    } else if (httpMethod == "delete") {
      func = connection.delete;
    } else if (httpMethod == "put") {
      func = connection.put;
    } else {
      func = connection.patch;
    }

    try {
      logger.i("API Call (START) :: $httpMethod $path");

      var response = await func(path,
          data: data, queryParameters: queryParameters, options: options);
      logger.i("API Call ( END ) :: $httpMethod $path");
      return response;
    } on DioException catch (e) {
      logger.i(e.message!);
      if (e.type == DioExceptionType.connectionError) {
        throw ApiError(message: "Connection error");
      }

      if (e.response != null &&
          e.response!.statusCode == 401 &&
          !path.contains("api.moyasar.com")) {
        if (!isPublic) {
          await refreshTokens();

          return await connect(httpMethod, path,
              isPublic: isPublic,
              counter: counter + 1,
              data: data,
              headers: headers,
              queryParameters: queryParameters);
        }
      } else if (e.response != null && e.response!.statusCode == 404) {
        return Response(
            requestOptions: RequestOptions(),
            data: {},
            statusCode: e.response!.statusCode);
      }

      throw ApiError(
          message: e.message,
          statusCode: e.response?.statusCode,
          data: e.response?.data);
    }
  }

  static Future<Response<dynamic>> get<T>(String path,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters,
      bool? isPublic}) async {
    return connect("get", path,
        data: data,
        headers: headers,
        queryParameters: queryParameters,
        isPublic: isPublic);
  }

  static Future<Response<dynamic>> post<T>(String path,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters,
      bool? isPublic}) async {
    return connect("post", path,
        data: data,
        headers: headers,
        queryParameters: queryParameters,
        isPublic: isPublic);
  }

  static Future<Response<dynamic>> put<T>(String path,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters,
      bool? isPublic}) async {
    return connect("put", path,
        data: data,
        headers: headers,
        queryParameters: queryParameters,
        isPublic: isPublic);
  }

  static Future<Response<dynamic>> delete<T>(String path,
      {Object? data,
      Map<String, String>? headers,
      Map<String, dynamic>? queryParameters,
      bool? isPublic}) async {
    return connect("delete", path,
        data: data,
        headers: headers,
        queryParameters: queryParameters,
        isPublic: isPublic);
  }
}
