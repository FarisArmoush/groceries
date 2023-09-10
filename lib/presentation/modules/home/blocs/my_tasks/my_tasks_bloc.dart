part of '../../home.dart';

class MyTasksBloc extends Bloc<MyTasksEvent, MyTasksState> {
  MyTasksBloc(this._myTasksUseCase) : super(MyTasksInitial()) {
    on<LoadMyTasks>(_onLoadMyTasks);
  }
  final MyTasksUseCase _myTasksUseCase;

  Future<void> _onLoadMyTasks(
    LoadMyTasks event,
    Emitter<MyTasksState> emit,
  ) async {
    final myTasks = await _myTasksUseCase.fetchMyTasks();
    await Future.delayed(
      500.milliseconds,
      () => emit(MyTasksLoaded(myTasks: myTasks)),
    );
  }
}
