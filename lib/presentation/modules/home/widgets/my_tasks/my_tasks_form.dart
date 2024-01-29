import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_rail.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_shimmered_rail.dart';
import 'package:groceries/presentation/widgets/error_state.dart';

class MyTasksForm extends StatelessWidget {
  const MyTasksForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTasksBloc, MyTasksState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) => state.status.when(
        initial: SizedBox.shrink,
        loading: MyTasksShimmeredRail.new,
        success: () => MyTasksRail(tasks: state.myTasks),
        failure: (error) => ErrorState(title: Text(error)),
      ),
    );
  }
}
