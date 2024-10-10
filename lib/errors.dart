class LogoutError implements Exception {
  final String? message;
  LogoutError(this.message);

  @override
  String toString() {
    return message!;
  }
}

class ApiError implements Exception {
  final String? message;
  final int? statusCode;
  Map<String, dynamic>? data;

  ApiError({this.data, required this.message, this.statusCode});

  @override
  String toString() {
    String? result = message ?? "";
    if (statusCode != null) result = "$result code: ${statusCode.toString()}";
    if (data != null) result = "$result data: ${data.toString()}";
    return result;
  }
}
