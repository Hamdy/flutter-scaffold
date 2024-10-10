import 'package:app/api.dart';
import 'package:app/client.dart';
import 'package:app/preferences/data/models/preferences_model.dart';

class PreferencesService {
  static Future<PreferencesModel> fetchPreferences() async {
    final response = await Client.get(BackendAPI.getPreferencesAPI);
    return PreferencesModel.fromJson(response.data);
  }
}
