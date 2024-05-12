import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/injection/injector.dart';
import 'package:groceries/utils/logger.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

/// Bootstraps the Flutter application by setting up error handling and
/// configuring the global [Bloc.observer]
///
/// The [builder] parameter is a function that returns a `Future` or a `Widget`.
/// The `builder` function is used to initialize the root widget of the
/// application. It should be an asynchronous function that resolves to a widget
/// that represents the initial screen of the application.
///
/// This function sets up error handling using [FlutterError.onError]
/// to log any uncaught
/// Flutter errors. The errors are logged with their corresponding stack traces.
///
/// The function utilizes [runZonedGuarded] to run the application's
/// root widget returned by the `builder` function. Any uncaught errors that
/// occur during this execution will be caught and logged using the provided
/// error handler, which logs the error along with its stack trace.
///
/// Example usage:
/// ```dart
/// void main() {
///   bootstrap(() => MyApp());
/// }
/// ```
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) => logger.critical(
        details.exceptionAsString(),
        details.exception,
        details.stack,
      );

  Bloc.observer = TalkerBlocObserver(
    talker: logger,
    settings: const TalkerBlocLoggerSettings(
      printTransitions: false,
    ),
  );
  EasyLocalization.logger.enableBuildModes = [];
  injectAppDependencies();
  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => logger.critical(error.toString(), error, stackTrace),
  );
}
