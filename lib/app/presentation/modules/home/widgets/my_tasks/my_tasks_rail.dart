import 'package:flutter/material.dart';
import 'package:groceries/app/data/models/task_model.dart';
import 'package:groceries/app/presentation/modules/home/widgets/my_tasks/my_tasks_list.dart';
import 'package:groceries/app/presentation/modules/home/widgets/rail_title.dart';

class MyTasksRail extends StatelessWidget {
  const MyTasksRail({
    required this.tasks,
    Key? key,
  }) : super(key: key);

  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      padding: EdgeInsets.only(
        top: height * 0.03,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const RailTitle(title: 'My Tasks'),
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
