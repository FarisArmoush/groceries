// ignore_for_file: strict_raw_type
part of '../app.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    dev.log(
      'onCreate -- ${bloc.runtimeType}',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    dev.log('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    dev.log(
      'onChange -- ${bloc.runtimeType}, $change',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    dev.log(
      'onTransition -- ${bloc.runtimeType}, $transition',
      name: bloc.runtimeType.toString(),
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    dev.log(
      'onError -- ${bloc.runtimeType}, $error',
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    dev.log('onClose -- ${bloc.runtimeType}');
  }
}
