import 'package:reup/config/app_config.dart';
import 'package:reup/config/environment/build_types.dart';
import 'package:reup/config/environment/environment.dart';
import 'package:reup/config/urls.dart';
import 'package:reup/runner.dart';

/// Main entry point of app.

void main() {
  Environment.init(
    buildType: BuildType.debug,
    config: AppConfig(
      url: Url.testUrl,
    ),
  );

  run();
}
