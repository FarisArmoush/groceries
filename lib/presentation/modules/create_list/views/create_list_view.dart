part of '../create_list.dart';

class CreateListView extends StatelessWidget {
  const CreateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateListBloc(),
      child: const CreateListForm(),
    );
  }
}
