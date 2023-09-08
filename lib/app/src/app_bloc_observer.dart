// ignore_for_file: strict_raw_type
part of '../app.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    developer.log(
      'onCreate -- ${bloc.runtimeType}',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    developer.log(
      'onEvent -- ${bloc.runtimeType}, $event',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    developer.log(
      'onChange -- ${bloc.runtimeType}, $change',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    developer.log(
      'onTransition -- ${bloc.runtimeType}, $transition',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    developer.log(
      'onError -- ${bloc.runtimeType}, $error',
      error: error,
      name: bloc.runtimeType.toString(),
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    developer.log(
      'onClose -- ${bloc.runtimeType}',
      name: bloc.runtimeType.toString(),
    );
  }
}
