import 'package:fitzone/models.dart';
import 'package:fitzone/pages/splash.dart';
import 'package:fitzone/repository.dart';
import 'package:fitzone/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StateManager with ChangeNotifier {
  static final StateManager _instance = StateManager._internal();

  static final Repository _repository = Repository();

  factory StateManager() {
    return _instance;
  }

  StateManager._internal();

  /* Theme */

  ThemeMode? _themeMode;

  static const Map<int, ThemeMode> _themeModes = {
    0: ThemeMode.system,
    1: ThemeMode.light,
    2: ThemeMode.dark
  };
  get themeMode {
    _themeMode ??= _themeModes[_repository.getTheme()];
    return _themeMode;
  }

  toggleTheme(int index) {
    _themeMode = _themeModes[index]!;
    _repository.updateTheme(index);
    notifyListeners();
  }

  // Home
  updateHome(Home home) {
    _repository.updateHome(home);
    notifyListeners();
  }

  get home {
    String home = _repository.getHome();
    if (home == Home.splash.value) {
      return const SplashPage();
    }
    return const SplashPage();
  }

  // language & locale
  Locale? _locale;
  get locale {
    _locale ??= languaeToLocale(_repository.getLanguageAndLocale());
    return _locale;
  }

  setLocale(LanguageLocale languageLocale) {
    _locale = languaeToLocale(languageLocale.value);
    _repository.updateLanguageAndLocale(languageLocale);
    Intl.defaultLocale = languageLocale.value;
    notifyListeners();
  }
}
