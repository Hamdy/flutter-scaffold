import 'package:app/const.dart';
import 'package:app/preferences/data/models/preferences_model.dart';
import 'package:app/preferences/data/service.dart';
import 'package:app/schema.dart';
import 'package:app/settings.dart';
import 'package:app/storage.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

class PreferencesRepository {
  static Isar db = Storage.db;

  static Future<void> fetchPreferences() async {
    PreferencesModel preferences = await PreferencesService.fetchPreferences();
    savePreferences(preferences);
  }

  static Future<Locale> getLocale() async {
    User? user = await db.users.get(1);
    String countryCode =
        user?.countryCode?.toUpperCase() ?? Settings.defaultCountryCode;
    String languageCode = user?.languageCode ?? Settings.defaultLanguageCode;
    return Locale(languageCode, countryCode);
  }

  static Future<TextDirection> getDirectionality() async {
    User? user = await db.users.get(1);
    String languageCode = user?.languageCode ?? Settings.defaultLanguageCode;
    return Settings.rtlCountries.contains(languageCode.toLowerCase())
        ? TextDirection.rtl
        : TextDirection.ltr;
  }

  static Future<void> setLocale(Locale locale) async {
    User? user = await db.users.get(1);
    // check if user is logged in already (trainee/coach to do it remotely)
    user?.countryCode = locale.countryCode!.toLowerCase();
    user?.languageCode = locale.languageCode;
    await db.writeTxn(() async {
      await db.users.put(user!); // insert & update
    });
  }

  static Future<void> savePreferences(PreferencesModel preferences) async {
    User? user = await db.users.get(1);
    user = user ?? User();

    user.countryCode = preferences.countryCode.toLowerCase();
    user.languageCode = preferences.languageCode;
    if (ThemeMode.dark.name == preferences.theme) {
      user.theme = ThemeMode.dark;
    } else if (UserTheme.light.name == preferences.theme) {
      user.theme = ThemeMode.light;
    } else {
      user.theme = ThemeMode.system;
    }

    await db.writeTxn(() async {
      await db.users.put(user!); // insert & update
    });
  }

  static Future<ThemeMode> getTheme() async {
    User? user = await db.users.get(1);
    return user?.theme ?? Settings.defauleTheme;
  }

  static Future<void> setTheme(ThemeMode theme) async {
    User? user = await db.users.get(1);
    // check if user is logged in already (trainee/coach to do it remotely)
    user?.theme = theme;

    await db.writeTxn(() async {
      await db.users.put(user!); // insert & update
    });
  }

  static Future<String> getHome() async {
    User? user = await db.users.get(1);
    return user?.home ?? Settings.defaultHome;
  }

  static Future<void> setHome(String home) async {
    User? user = await db.users.get(1);
    user?.home = home;

    await db.writeTxn(() async {
      await db.users.put(user!); // insert & update
    });
  }
}
