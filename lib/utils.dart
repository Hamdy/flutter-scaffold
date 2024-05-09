import 'package:fitzone/theme.dart';
import 'package:flutter/material.dart';

// "en_us" -> Locale('en', 'us')
Locale languaeToLocale(String language) {
  List<String> languageLocale = language.split('_');
  return Locale(languageLocale[0], languageLocale[1]);
}

double horizontal(BuildContext context, double space) {
  return (MediaQuery.of(context).size.width / designWidth) * space;
}

double vertical(BuildContext context, double space) {
  return (MediaQuery.of(context).size.height / designHeight) * space;
}
