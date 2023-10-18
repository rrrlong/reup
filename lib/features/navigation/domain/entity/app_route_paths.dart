/// List of all the paths that are used to navigate in temp feature.
///
/// Have to been filled with the entries like this:
/// ```dart
/// /// Path description.
/// static const String screenPath = 'screenPath';
/// ```
abstract class AppRoutePaths {
  /// Path to splash screen.
  static const String splashPath = 'splash';

  /// Path to home screen.
  static const String homePath = '/';

  /// Path to main screen.
  static const String mainPath = 'main';

  /// Path to favorites screen.
  static const String favoritesPath = 'favorites';

  /// Path to catalog screen.
  static const String catalogPath = 'catalog';

  /// Path to cart screen.
  static const String cartPath = 'cart';

  /// Path to profile screen.
  static const String profilePath = 'profile';
}
