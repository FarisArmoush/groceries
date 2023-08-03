part of '../../home.dart';

class MyTasksForm extends StatelessWidget {
  const MyTasksForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyTasksBloc, MyTasksState>(
      builder: (context, state) {
        if (state is MyTasksInitial) {
          return const AppLoadingIndicator();
        }
        if (state is MyTasksLoaded) {
          return MyTasksRail(
            tasks: state.myTasks,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
