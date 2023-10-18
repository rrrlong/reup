import 'dart:async';
import 'dart:developer';

import 'package:alice/alice.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:reup/config/environment/environment.dart';
import 'package:reup/features/app/app.dart';
import 'package:reup/features/app/bloc/app_bloc.dart';
import 'package:reup/features/common/service/theme/theme_service_impl.dart';
import 'package:reup/features/navigation/servise/router.dart';
import 'package:reup/persistence/storage/theme_storage/theme_storage_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_logger/surf_logger.dart';

/// App launch.
Future<void> run() async {
  return runZonedGuarded(() async {
    /// It must be called so that the orientation does not fall.
    WidgetsFlutterBinding.ensureInitialized();

    final fbOptions = Environment.instance().firebaseOptions;

    if (fbOptions != null) {
      await Firebase.initializeApp(options: fbOptions);
    }

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // TODO(init-project): Initialize Crashlytics.
    // PlatformDispatcher.instance.onError = (error, stack) {
    //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    //
    //   return true;
    // };

    _initLogger();
    await _runApp();
  }, (error, stackTrace) async {
    log(error.toString());
  });
}

Future<void> _runApp() async {
  await _registerBaseSingletons();

  final appBloc = AppBloc();
  GetIt.I.registerSingleton<AppBloc>(appBloc);
  runApp(
    BlocProvider(
      create: (context) => appBloc,
      child: const App(),
    ),
  );
}

void _initLogger() {
  // TODO(init-project): Initialize CrashlyticsRemoteLogStrategy.
  // RemoteLogger.addStrategy(CrashlyticsRemoteLogStrategy());
  Logger.addStrategy(DebugLogStrategy());
  Logger.addStrategy(RemoteLogStrategy());
}

Future<void> _registerBaseSingletons() async {
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
  GetIt.I.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());
  GetIt.I.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  GetIt.I.registerSingleton<ThemeServiceImpl>(ThemeServiceImpl(
      await ThemeModeStorageImpl().getThemeMode() ?? ThemeMode.light));
  GetIt.I.registerSingleton<Alice>(Alice(
      showNotification: true,
      showInspectorOnShake: true,
      navigatorKey: GlobalKey<NavigatorState>()));
  GetIt.I.registerSingleton<AutoRouter>(const AutoRouter());
  GetIt.I.registerSingleton<Dio>(Dio());
  GetIt.I.registerSingleton<InternetConnectionChecker>(
      InternetConnectionChecker());
}
