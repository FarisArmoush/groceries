part of '../../home.dart';

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
