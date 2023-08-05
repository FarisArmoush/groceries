part of '../../home.dart';

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
          duration: (500 + (index * 200)).milliseconds,
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
