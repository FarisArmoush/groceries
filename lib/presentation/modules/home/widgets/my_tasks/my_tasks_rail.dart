import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/task_model.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_list.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

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
      physics: const NeverScrollableScrollPhysics(),
      children: [
        RailTitle(
          title: AppTranslations.myTasks,
        ),
        SizedBox(
          height: context.deviceHeight * 0.025,
        ),
        MyTasksList(
          tasks: tasks,
        ),
      ],
    );
  }
}
