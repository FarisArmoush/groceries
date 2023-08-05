part of '../../home.dart';

class MyTasksBloc extends Bloc<MyTasksEvent, MyTasksState> {
  MyTasksBloc() : super(MyTasksInitial()) {
    final MyTasksRepository tasksRepository = MockTasksRepository();

    on<LoadMyTasks>(
      (event, emit) async {
        await tasksRepository.fetchMyTasks();
        emit(
          MyTasksLoaded(myTasks: tasksRepository.myTasks),
        );
      },
    );
  }
}
