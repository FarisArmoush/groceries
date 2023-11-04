part of '../create_list.dart';

class CreateListView extends StatelessWidget {
  const CreateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateListBloc(
        context.read<CreateListUseCase>(),
      )..add(
          const CreateListEvent.getIcons(),
        ),
      child: const CreateListPage(),
    );
  }
}
