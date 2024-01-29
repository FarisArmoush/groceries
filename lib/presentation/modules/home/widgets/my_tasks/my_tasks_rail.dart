import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_list.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/you_have_no_tasks.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class MyTasksRail extends StatelessWidget {
  const MyTasksRail({
    required this.tasks,
    super.key,
  });

  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        RailTitle(
          title: AppTranslations.home.myTasks,
        ),
        SizedBox(
          height: tasks.isNotEmpty
              ? context.deviceHeight * 0.025
              : context.deviceHeight * 0.05,
        ),
        if (tasks.isNotEmpty)
          MyTasksList(
            tasks: tasks,
          )
        else
          const YouHaveNoTasks(),
      ],
    );
  }
}
