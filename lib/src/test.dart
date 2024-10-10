import 'package:app/preferences/business/cubit/locale_cubit.dart';
import 'package:app/preferences/business/cubit/theme_cubit.dart';
import 'package:app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PreferencesTestScreen extends StatelessWidget {
  const PreferencesTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations loca = AppLocalizations.of(context)!;

    var localeCubit = context.read<LocaleCubit>();
    var themeCubit = context.read<ThemeCubit>();
    Locale current = Localizations.localeOf(context);

    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addVerticalSpace(context, 100),
              GestureDetector(
                onTap: () {
                  localeCubit.setLocale(Locale('ar', 'SA'));
                },
                child: Text(loca.arabicLanguage),
              ),
              addVerticalSpace(context, 20),
              GestureDetector(
                onTap: () {
                  localeCubit.setLocale(Locale('en', 'US'));
                },
                child: Text(loca.englishLanguage),
              ),
              addVerticalSpace(context, 20),
              GestureDetector(
                onTap: () {
                  themeCubit.setTheme(ThemeMode.dark);
                },
                child: Text(loca.darkMode),
              ),
              addVerticalSpace(context, 20),
              GestureDetector(
                onTap: () {
                  themeCubit.setTheme(ThemeMode.light);
                },
                child: Text(loca.lightMode),
              ),
            ]),
      ),
    );
  }
}
