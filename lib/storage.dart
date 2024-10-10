import 'dart:io';

import 'package:app/schema.dart';
import 'package:app/settings.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class Storage {
  static bool _isInitialized = false;

  static late Isar db;

  static Future<Isar> initialize() async {
    if (!_isInitialized) {
      Directory dir = await getApplicationDocumentsDirectory();

      db = await Isar.open(
        [UserSchema, DeviceSchema, LogSchema, NotificationSchema],
        directory: dir.path,
        inspector: Settings.debug,
      );
      _isInitialized = true;
    }
    return db;
  }
}
