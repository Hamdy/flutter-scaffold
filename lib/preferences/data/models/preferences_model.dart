class PreferencesModel {
  late final String theme;
  late final String countryCode;
  late final String languageCode;

  PreferencesModel(
      {required this.countryCode,
      required this.languageCode,
      required this.theme});

  Map<String, dynamic> toJson() {
    return {
      "theme": theme,
      "country_code": countryCode,
      "language_code": languageCode
    };
  }

  PreferencesModel.fromJson(Map<String, dynamic> data) {
    theme = data["theme"];
    countryCode = data["country_code"];
    languageCode = data["language_code"];
  }
}
