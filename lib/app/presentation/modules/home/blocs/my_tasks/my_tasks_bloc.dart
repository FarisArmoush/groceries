import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/app/data/models/task_model.dart';
import 'package:groceries/app/data/repositories/mock_repositories/mock_tasks_repository.dart';
import 'package:groceries/app/domain/repositories/base_my_tasks_repository.dart';

part 'my_tasks_event.dart';
part 'my_tasks_state.dart';

class MyTasksBloc extends Bloc<MyTasksEvent, MyTasksState> {
  MyTasksBloc() : super(MyTasksInitial()) {
    final BaseTasksRepository tasksRepository = MockTasksRepository();

    on<LoadMyTasks>(
      (event, emit) async {
        await tasksRepository.getMyTasks();
        emit(
          MyTasksLoaded(myTasks: tasksRepository.myTasks),
        );
      },
    );
  }
}
