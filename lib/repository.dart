import 'package:fitzone/config.dart';
import 'package:fitzone/models.dart';
import 'package:isar/isar.dart';

class Repository {
  static final Repository _instance = Repository._internal();

  factory Repository() {
    return _instance;
  }

  Repository._internal();

  ApplicationState createApplicationState() {
    Config.db.writeTxnSync(() {
      Config.db.applicationStates.putSync(ApplicationState());
    });
    return Config.db.applicationStates.where().findFirstSync()!;
  }

  ApplicationState getOrCreateApplicationState() {
    ApplicationState? state;
    state = Config.db.applicationStates.where().findFirstSync();

    state ??= createApplicationState();
    return state;
  }

  // Home Page
  void updateHome(Home home) {
    Config.db.writeTxnSync(() {
      ApplicationState state = getOrCreateApplicationState();
      state.home = home.value;
      Config.db.applicationStates.putSync(state);
    });
  }

  String getHome() {
    ApplicationState state = getOrCreateApplicationState();
    return state.home;
  }

  // Theme
  void updateTheme(int index) {
    Config.db.writeTxnSync(() {
      ApplicationState state = getOrCreateApplicationState();
      state.theme = index;
      Config.db.applicationStates.putSync(state);
    });
  }

  int getTheme() {
    ApplicationState state = getOrCreateApplicationState();
    return state.theme;
  }

  // Language
  void updateLanguageAndLocale(LanguageLocale languageLocale) {
    Config.db.writeTxnSync(() {
      ApplicationState state = getOrCreateApplicationState();
      state.language = languageLocale.value;
      Config.db.applicationStates.putSync(state);
    });
  }

  String getLanguageAndLocale() {
    ApplicationState state = getOrCreateApplicationState();

    return state.language;
  }
}
