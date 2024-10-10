import 'package:app/const.dart';
import 'package:app/preferences/data/repository.dart';
import 'package:app/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'directionality_state.dart';

class DirectionalityCubit extends Cubit<DirectionalityState> {
  TextDirection current = Settings.defaultTextDirection;

  DirectionalityCubit()
      : super(DirectionalityState(
            status: Status.loading,
            textDirection: Settings.defaultTextDirection));

    Future<void> initalize() async {
    emit(DirectionalityState(textDirection: current, status: Status.loading));
    try {
      current = await getDirectionality();

      emit(DirectionalityState(textDirection: current, status: Status.success));
    } catch (e, _) {
      emit(DirectionalityState(textDirection: current, status: Status.failure));
    }
  }

  Future<TextDirection> getDirectionality() async {
    return await PreferencesRepository.getDirectionality();
  }
}
