import 'package:package_info_plus/package_info_plus.dart';

class SettingsController {
  static Future<PackageInfo> Function() getAppInfo = () =>
      PackageInfo.fromPlatform();
}
