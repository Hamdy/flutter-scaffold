import 'package:app/const.dart';
import 'package:app/preferences/data/repository.dart';
import 'package:app/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeMode current = Settings.defauleTheme;

  ThemeCubit()
      : super(ThemeState(status: Status.loading, theme: Settings.defauleTheme));

  Future<void> initalize() async {
    emit(ThemeState(theme: current, status: Status.loading));
    try {
      current = await getTheme();

      emit(ThemeState(theme: current, status: Status.success));
    } catch (e, _) {
      emit(ThemeState(theme: current, status: Status.failure));
    }
  }

  Future<void> setTheme(ThemeMode theme) async {
    emit(ThemeState(theme: current, status: Status.loading));
    try {
      await PreferencesRepository.setTheme(theme);
      current = theme;
      emit(ThemeState(theme: current, status: Status.success));
    } catch (e, _) {
      emit(ThemeState(theme: current, status: Status.failure));
    }
  }

  Future<ThemeMode> getTheme() async {
    return await PreferencesRepository.getTheme();
  }
}
