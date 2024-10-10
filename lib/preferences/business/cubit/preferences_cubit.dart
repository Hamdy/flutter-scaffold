import 'package:app/const.dart';
import 'package:app/preferences/data/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'preferences_state.dart';

class PreferencesCubit extends Cubit<PreferencesState> {
  PreferencesCubit() : super(PreferencesState(status: Status.loading));

  Future<void> initalize() async {
    emit(PreferencesState(status: Status.loading));
    try {
      await PreferencesRepository.fetchPreferences();

      emit(PreferencesState(status: Status.success));
    } catch (e, _) {
      emit(PreferencesState(status: Status.failure));
    }
  }
}
