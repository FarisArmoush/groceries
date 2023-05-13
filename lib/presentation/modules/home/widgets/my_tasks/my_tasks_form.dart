import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/home/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_rail.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';

class MyTasksForm extends StatelessWidget {
  const MyTasksForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTasksBloc, MyTasksState>(
      builder: (context, state) {
        if (state is MyTasksInitial) {
          return const AppLoadingIndicator();
        }
        if (state is MyTasksLoaded && state.myTasks.isEmpty) {
          return const SizedBox.shrink();
        } else if (state is MyTasksLoaded) {
          return MyTasksRail(
            tasks: state.myTasks,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
