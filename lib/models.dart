import 'package:fitzone/config.dart';
import 'package:isar/isar.dart';

// needed for code generation
part 'models.g.dart';

enum Home {
  splash('splash'),
  registered('registere'),
  coach('coach'),
  trainee('trainee');

  final String value;
  const Home(this.value);
}

enum AppTheme {
  system(0),
  light(1),
  dark(2);

  final int value;
  const AppTheme(this.value);
}

enum LanguageLocale {
  arSA('ar_SA'),
  enUS('en_US');

  final String value;
  const LanguageLocale(this.value);
}

@collection
@Name('ApplicationState')
class ApplicationState {
  Id id = Isar.autoIncrement;
  String home = Home.splash.value;
  int theme = AppTheme.system.value;
  String language = Config.defaultLocale;
}

@collection
@Name('User')
class User {
  Id id = Isar.autoIncrement;
}
