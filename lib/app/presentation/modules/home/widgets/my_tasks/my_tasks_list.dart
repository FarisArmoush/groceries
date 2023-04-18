import 'package:flutter/material.dart';
import 'package:groceries/app/data/models/task_model.dart';
import 'package:groceries/app/presentation/modules/home/widgets/my_tasks/my_tasks_card.dart';

class MyTasksList extends StatelessWidget {
  const MyTasksList({
    required this.tasks,
    Key? key,
  }) : super(key: key);

  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.separated(
      itemCount: tasks.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return MyTasksCard(
          taskModel: TaskModel(
            id: tasks[index].id,
            listModel: tasks[index].listModel,
            dueDate: tasks[index].dueDate,
            groceries: tasks[index].groceries,
            groceriesAmount: tasks[index].groceries.length,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: size.height * 0.01,
        );
      },
    );
  }
}
