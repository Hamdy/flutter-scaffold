import 'package:fitzone/config.dart';
import 'package:fitzone/routes.dart';
import 'package:fitzone/state.dart';
import 'package:fitzone/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Config.init();
  runApp(const Fitzone());
}

class Fitzone extends StatefulWidget {
  const Fitzone({super.key});

  @override
  State<Fitzone> createState() => _FitzoneState();
}

class _FitzoneState extends State<Fitzone> {
  final StateManager _stateManager = StateManager();

  @override
  void dispose() {
    _stateManager.removeListener(onThemeChange);
    super.dispose();
  }

  @override
  void initState() {
    // _dispatcher.onPlatformBrightnessChanged = onBrightnessChangedBySystem;
    _stateManager.addListener(onThemeChange);
    super.initState();
  }

  void onThemeChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final AppTheme appTheme = AppTheme(context: context);
    print(Theme.of(context).brightness);

    return ScreenUtilInit(
        designSize: const Size(designWidth, designHeight),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: Config.localizationsDelegates,
              supportedLocales: Config.supportedLocales,
              locale: _stateManager.locale,
              theme: appTheme.lightTheme,
              darkTheme: appTheme.darkTheme,
              themeMode: _stateManager.themeMode!,
              routes: routes,
              // without wrapping in builder
              // any changes to theme won't affect text style
              home: Builder(builder: (context) {
                return _stateManager.home;
              }));
        });
  }
}
