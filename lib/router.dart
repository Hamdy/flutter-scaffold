import 'package:app/src/test.dart';
import 'package:flutter/material.dart';

class AppRouter {
  // Static fields for route paths
  static const String signup = "/account/signup";
  static const String login = "/account/login";

  static MaterialPageRoute generateRoute(RouteSettings settings, String? home) {
    Widget widget = PreferencesTestScreen();

    String? route = settings.name ?? "/";

    if (route == "/") {
      route = home;
    }

    switch (route) {
      case "/":
      case AppRouter.signup:
        // widget = const SignupScreen();
        break;
    }

    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
