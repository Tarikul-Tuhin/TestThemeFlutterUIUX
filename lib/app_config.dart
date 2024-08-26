typedef GeneralSettingsModel = Map;

abstract class AppConfig {
  setAppColors();
  setAppICons();
}

class AppConfigImpl implements AppConfig {
  AppConfigImpl({required this.genSettingsModel});
  final GeneralSettingsModel genSettingsModel;
  @override
  setAppColors() {
    throw UnimplementedError();
  }

  @override
  setAppICons() {
    throw UnimplementedError();
  }
}
