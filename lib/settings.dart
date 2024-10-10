import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:phone_form_field/phone_form_field.dart';

class Settings {
  static const bool debug = true;
  static const String appTitle = "FIT Zone";
  static const String version = "0.1";

  static const backendURL = "http://localhost:8000";
  static const appUrl = "https://fitzone.com";
  static const int maxHttpRetryOn401 = 5;
  static const int maxHttpRetry = 3;

  static const String defaultCountryCode = "SA";
  static const IsoCode defaultCountryIsoCode = IsoCode.SA;
  static const String defaultLanguageCode = "ar";
  static const ThemeMode defauleTheme = ThemeMode.system;
  static const String defaultHome = "/";
  static const TextDirection defaultTextDirection = TextDirection.rtl;

  static const List<String> rtlCountries = [
    'ar', // Arabic
    'fa', // Farsi
    'ps', // Pashto f
    'ur', // Urdu
  ];

  // Auto generated from language files
  static const supportedLocales = AppLocalizations.supportedLocales;

  static const localizationsDelegates = [
    ...AppLocalizations.localizationsDelegates // generates all needed
  ];

  static const debugShowCheckedModeBanner = false;

  static const nullUrlCallback =
      "https://63a2-156-197-69-244.ngrok-free.app/api/payment/subscription/null";
  static const cardApprovedCallback =
      "https://63a2-156-197-69-244.ngrok-free.app/api/payment/subscription/card/approve";
  static const paymentGwKey =
      "pk_test_6w66podbUhZyVBKwd9XKTRBvTUxX4HrqGbLUF4Yr";
}
