import 'package:app/const.dart';
import 'package:app/preferences/data/repository.dart';
import 'package:app/settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  String current = Settings.defaultHome;

  HomeCubit() : super(HomeState(home: "/", status: Status.loading));

  Future<void> initalize() async {
    try {
      current = await getHome();
      emit(HomeState(home: current, status: Status.success));
    } catch (e, _) {
      emit(HomeState(home: current, status: Status.failure));
    }
  }

  Future<void> setHome(String home) async {
    emit(HomeState(home: current, status: Status.loading));
    try {
      await PreferencesRepository.setHome(home);
      current = home;
      emit(HomeState(home: current, status: Status.success));
    } catch (e, _) {
      emit(HomeState(home: current, status: Status.failure));
    }
  }

  Future<String> getHome() async {
    return await PreferencesRepository.getHome();
  }
}
