import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_card.dart';
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
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      itemBuilder: (context, index) {
        return MyTasksCard(
          taskModel: TaskModel(
            id: tasks[index].id,
            listModel: tasks[index].listModel,
            dueDate: tasks[index].dueDate,
            groceries: tasks[index].groceries,
            creationDate: tasks[index].creationDate,
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
