import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/task/task_entity.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_list.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/you_have_no_tasks.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';

class MyTasksRail extends StatelessWidget {
  const MyTasksRail({
    required this.tasks,
    super.key,
  });

  final List<TaskEntity>? tasks;

  @override
  Widget build(BuildContext context) {
    final tasksIsNotEmpty = tasks?.isNotEmpty ?? false;
    return ListView(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        RailTitle(
          title: Text(Translations.home.myTasks),
        ),
        SizedBox(
          height: tasksIsNotEmpty
              ? context.deviceHeight * 0.025
              : context.deviceHeight * 0.05,
        ),
        if (tasksIsNotEmpty)
          MyTasksList(
            tasks: tasks,
          )
        else
          const YouHaveNoTasks(),
      ],
    );
  }
}
