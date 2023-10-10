import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:reup/assets/themes/theme_data.dart';
import 'package:reup/config/environment/environment.dart';
import 'package:reup/features/common/service/theme/theme_service_impl.dart';
import 'package:reup/features/navigation/servise/router.dart';

/// App widget.
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final ThemeServiceImpl _themeService = GetIt.I();
  final AppRouter _appRouter = GetIt.I();
  final Alice _alice = GetIt.I();
  final environment = Environment.instance();

  @override
  void initState() {
    super.initState();

    /// init Alice.
    final navigatorKey = _appRouter.navigatorKey;
    _alice.setNavigatorKey(navigatorKey);
    _alice.getNavigatorKey()!;

    if (!environment.isRelease) {
      /// do smt
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _themeService,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: environment.isDebug,
          theme: AppThemeData.lightTheme,
          darkTheme: AppThemeData.darkTheme,
          themeMode: _themeService.currentThemeMode,

          /// Localization.
          locale: _localizations.first,
          localizationsDelegates: _localizationsDelegates,
          supportedLocales: _localizations,

          /// This is for navigation.
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
        );
      },
    );
  }
}

const _localizations = [
  Locale('ru', 'RU'),
  Locale('en', 'EN'),
];

const _localizationsDelegates = [
  AppLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];
