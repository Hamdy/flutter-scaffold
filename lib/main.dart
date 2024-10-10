import 'package:app/components/loading_indicator.dart';
import 'package:app/const.dart';
import 'package:app/init.dart';
import 'package:app/preferences/business/cubit/directionality_cubit.dart';
import 'package:app/preferences/business/cubit/home_cubit.dart';
import 'package:app/preferences/business/cubit/locale_cubit.dart';
import 'package:app/preferences/business/cubit/preferences_cubit.dart';
import 'package:app/preferences/business/cubit/theme_cubit.dart';
import 'package:app/router.dart';
import 'package:app/settings.dart';
import 'package:app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await AppInitializer.initApplication();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme(context: context);

    return MultiBlocProvider(
        providers: [
          BlocProvider<PreferencesCubit>(
              create: (context) => PreferencesCubit()..initalize()),
          BlocProvider<LocaleCubit>(
              create: (context) => LocaleCubit()..initalize()),
          BlocProvider<ThemeCubit>(
              create: (context) => ThemeCubit()..initalize()),
          BlocProvider<HomeCubit>(
              create: (context) => HomeCubit()..initalize()),
          BlocProvider<DirectionalityCubit>(
              create: (context) => DirectionalityCubit()..initalize()),
        ],
        child: BlocBuilder<PreferencesCubit, PreferencesState>(
            builder: (context, preferencesState) {
          return BlocBuilder<LocaleCubit, LocaleState>(
            builder: (context, locale) {
              return BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, themeState) {
                return BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, homeState) {
                  return BlocBuilder<DirectionalityCubit, DirectionalityState>(
                      builder: (context, directionalityState) {
                    if (preferencesState.status == Status.loading ||
                        themeState.status == Status.loading ||
                        homeState.status == Status.loading ||
                        themeState.status == Status.loading) {
                      return const LodingIndicator();
                    }
                    return Directionality(
                      textDirection: directionalityState
                          .textDirection, // state.data.textDirection,
                      child: ScreenUtilInit(
                        designSize: Size(designWidth, designHeight),
                        minTextAdapt: true,
                        splitScreenMode: true,
                        child: MaterialApp(
                          title: Settings.appTitle,
                          debugShowCheckedModeBanner:
                              Settings.debugShowCheckedModeBanner,
                          localizationsDelegates:
                              Settings.localizationsDelegates,
                          supportedLocales: Settings.supportedLocales,
                          onGenerateRoute: (settings) {
                            return AppRouter.generateRoute(
                                settings, homeState.home);
                          },
                          theme: appTheme.lightTheme,
                          darkTheme: appTheme.darkTheme,
                          locale: locale.locale,
                          themeMode: themeState.theme,
                        ),
                      ),
                    );
                  });
                });
              });
            },
          );
        }));
  }
}
