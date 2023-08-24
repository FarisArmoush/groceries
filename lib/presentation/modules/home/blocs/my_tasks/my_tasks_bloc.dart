part of '../../home.dart';

class MyTasksBloc extends Bloc<MyTasksEvent, MyTasksState> {
  MyTasksBloc(this._myTasksUseCase) : super(MyTasksInitial()) {
    on<LoadMyTasks>(
      (event, emit) async {
        final myTasks = await _myTasksUseCase.fetchMyTasks();
        emit(
          MyTasksLoaded(myTasks: myTasks),
        );
      },
    );
  }
  final MyTasksUseCase _myTasksUseCase;
}
