import 'dart:io';

import 'package:fitzone/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class Config {
  static final Config _instance = Config._internal();

  static bool _initialized = false;

  static late Isar db;
  static const List<CollectionSchema<dynamic>> schemas = [
    ApplicationStateSchema
  ];
  static List<Locale> supportedLocales = const [
    Locale('ar', 'SA'), // Arabic
    Locale('en', 'US'), // English
  ];

  static var localizationsDelegates = [
    AppLocalizations.delegate, // Add this line
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  factory Config() {
    return _instance;
  }

  // Change here
  static const bool debug = true;
  static String defaultLocale = "en_US";

  static Future<void> init() async {
    if (!_initialized) {
      Directory dir = await getApplicationDocumentsDirectory();

      Config.db = await Isar.open(
        [UserSchema, ApplicationStateSchema],
        directory: dir.path,
        inspector: Config.debug,
      );
      _initialized = true;
    }
  }

  Config._internal();
}
