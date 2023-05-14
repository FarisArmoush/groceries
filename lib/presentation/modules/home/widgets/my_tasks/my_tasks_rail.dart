import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/task_model.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_list.dart';
import 'package:groceries/presentation/modules/home/widgets/rail_title.dart';

class MyTasksRail extends StatelessWidget {
  const MyTasksRail({
    required this.tasks,
    super.key,
  });

  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        RailTitle(
          title: AppTranslations.myTasks,
        ),
        SizedBox(
          height: height * 0.025,
        ),
        MyTasksList(
          tasks: tasks,
        ),
      ],
    );
  }
}
