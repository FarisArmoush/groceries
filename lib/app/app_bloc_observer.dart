import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();
  @override
  void onCreate(BlocBase<Object?> bloc) {
    super.onCreate(bloc);
    developer.log(
      'onCreate -- ${bloc.runtimeType}',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onEvent(Bloc<Object?, Object?> bloc, Object? event) {
    super.onEvent(bloc, event);
    developer.log(
      'onEvent -- ${bloc.runtimeType}, $event',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onError(BlocBase<Object?> bloc, Object error, StackTrace stackTrace) {
    developer.log(
      'onError -- ${bloc.runtimeType}, $error',
      error: error,
      name: bloc.runtimeType.toString(),
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase<Object?> bloc) {
    super.onClose(bloc);
    developer.log(
      'onClose -- ${bloc.runtimeType}',
      name: bloc.runtimeType.toString(),
    );
  }
}
