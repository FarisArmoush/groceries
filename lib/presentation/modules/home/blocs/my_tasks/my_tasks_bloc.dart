import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/data/repositories/mock_repositories/mock_tasks_repository.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';

part 'my_tasks_event.dart';
part 'my_tasks_state.dart';

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
