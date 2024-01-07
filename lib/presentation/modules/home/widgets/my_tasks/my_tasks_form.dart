part of '../../home.dart';

class MyTasksForm extends StatelessWidget {
  const MyTasksForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTasksBloc, MyTasksState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) => state.status.when(
        initial: SizedBox.shrink,
        loading: MyTasksShimmeredRail.new,
        success: () => MyTasksRail(tasks: state.myTasks),
        failure: (error) => ErrorState(title: Text(error)),
      ),
    );
  }
}
