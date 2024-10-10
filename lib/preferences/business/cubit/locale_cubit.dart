import 'package:app/const.dart';
import 'package:app/preferences/data/repository.dart';
import 'package:app/settings.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  Locale current =
      Locale(Settings.defaultLanguageCode, Settings.defaultCountryCode);

  LocaleCubit()
      : super(LocaleState(
            locale: Locale(
                Settings.defaultLanguageCode, Settings.defaultCountryCode),
            status: Status.loading));

  Future<void> initalize() async {
    emit(LocaleState(locale: current, status: Status.loading));
    try {
      current = await getLocale();

      emit(LocaleState(locale: current, status: Status.success));
    } catch (e, _) {
      emit(LocaleState(locale: current, status: Status.failure));
    }
  }

  Future<void> setLocale(Locale locale) async {
    emit(LocaleState(locale: current, status: Status.loading));
    try {
      await PreferencesRepository.setLocale(locale);
      current = locale;
      emit(LocaleState(locale: current, status: Status.success));
    } catch (e, _) {
      emit(LocaleState(locale: current, status: Status.failure));
    }
  }

  Future<Locale> getLocale() async {
    return await PreferencesRepository.getLocale();
  }
}
