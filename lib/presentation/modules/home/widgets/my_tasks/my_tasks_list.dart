import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/domain/entities/task/task_entity.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_card.dart';

class MyTasksList extends StatelessWidget {
  const MyTasksList({
    required this.tasks,
    super.key,
  });

  final List<TaskEntity>? tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: tasks?.length ?? 0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      itemBuilder: (context, index) => MyTasksCard(taskModel: tasks?[index]),
      separatorBuilder: (context, index) {
        return SizedBox(
          height: context.deviceHeight * 0.01,
        );
      },
    );
  }
}
