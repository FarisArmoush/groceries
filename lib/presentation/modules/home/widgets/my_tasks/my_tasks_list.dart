import 'package:flutter/material.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_card.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class MyTasksList extends StatelessWidget {
  const MyTasksList({
    required this.tasks,
    super.key,
  });

  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: tasks.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return LeftFadeInAnimation(
          duration: Duration(milliseconds: 500 + (index * 200)),
          child: MyTasksCard(
            taskModel: TaskModel(
              uid: tasks[index].uid,
              listModel: tasks[index].listModel,
              dueDate: tasks[index].dueDate,
              groceries: tasks[index].groceries,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: context.deviceHeight * 0.01,
        );
      },
    );
  }
}
