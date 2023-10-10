import 'package:reup/config/environment/environment.dart';

/// Server urls.
abstract class Url {
  /// TRest url.
  static String get testUrl => 'http://uinames.com/api/';

  /// Prod url.
  static String get prodUrl => 'https://prod.reup.com/';

  /// Dev url.
  static String get devUrl => 'https://dev.reup.com/';

  /// Base url.
  static String get baseUrl => Environment.instance().config.url;
}
