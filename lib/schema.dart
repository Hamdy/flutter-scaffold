import 'package:app/const.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'schema.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement; // Auto-incremented id

  late String? name;
  late String? languageCode;
  late String? countryCode;

  @Enumerated(EnumType.name)
  late ThemeMode? theme;

  late String? home;

  @Enumerated(EnumType.name)
  late UserType? type;

  late String? userId;
  late String? profileId;
  late String? authToken;
  late String? refreshToken;
  late bool? isApproved;

  User(
      {this.name,
      this.authToken,
      this.refreshToken,
      this.userId,
      this.type,
      this.profileId,
      this.countryCode,
      this.languageCode,
      this.home,
      this.theme,
      this.isApproved});
}

@collection
class Device {
  Id id = Isar.autoIncrement; // Auto-incremented id

  late String token;
  late String serial;

  @Enumerated(EnumType.name)
  late DeviceType type;

  late String name;
  late String model;
  late String version;
  late String manufacturer;

  Device(
      {required this.type,
      required this.token,
      required this.serial,
      required this.manufacturer,
      required this.model,
      required this.name,
      required this.version});

  Map<String, dynamic> toJson() {
    return {
      'device_type': type,
      'device_token': token,
      'device_serial': serial,
    };
  }
}

@collection
class Log {
  Id id = Isar.autoIncrement; // Auto-incremented id

  @Enumerated(EnumType.name)
  late UserType userType;
  late String userId;
  late String userProfileId;
  late String deviceSerial;

  @Enumerated(EnumType.name)
  late DeviceType deviceType;

  @Enumerated(EnumType.name)
  late LogLevel logLevel;

  late String logMsg;

  late DateTime logTime;

  Log(
      {required this.deviceSerial,
      required this.deviceType,
      required this.logLevel,
      required this.logMsg,
      required this.userId,
      required this.userProfileId,
      required this.userType,
      required this.logTime});

  Map<String, dynamic> toJson() {
    return {
      'device': {
        'type': deviceType.name,
        'serial': deviceSerial,
      },
      'user': {
        'id': userId,
        'profile_id': userProfileId,
        'type': userType.name
      },
      'log': {'msg': logMsg, 'level': logLevel.name, 'time': logTime}
    };
  }
}

@collection
class Notification {
  Id id = Isar.autoIncrement; // Auto-incremented id

  late String msg;
  late bool isRead;
  @Enumerated(EnumType.name)
  late NotificationType type;

  late DateTime time;

  Notification(
      {required this.msg,
      required this.isRead,
      required this.time,
      required this.type});

  Notification.fromJson(Map<String, dynamic> data) {
    msg = data['msg'];
    isRead = data['is_read'] ?? false;
    type = data['type'];
    time = data['time'];
  }
}
