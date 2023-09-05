part of '../../home.dart';

class MyTasksForm extends StatelessWidget {
  const MyTasksForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTasksBloc, MyTasksState>(
      builder: (context, state) => switch (state) {
        MyTasksInitial() => const MyTasksShimmeredRail(),
        MyTasksLoaded() => MyTasksRail(tasks: state.myTasks),
        _ => const SizedBox.shrink(),
      },
    );
  }
}
