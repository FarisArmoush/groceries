part of '../grocery_list_settings.dart';

class GroceryListSettingsView extends StatelessWidget {
  const GroceryListSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DeleteListBloc(
            context.read<DeleteGroceryListUseCase>(),
          ),
          child: const DeleteGroceryListButton(),
        ),
        BlocProvider(
          create: (context) => RemoveMemberFromListBloc(
            context.read<RemoveMemberFromListUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => UpdateListImageBloc(
            context.read<UpdateListImageUseCase>(),
          ),
        ),
        BlocProvider(
          create: (context) => UpdateListNameBloc(
            context.read<UpdateListNameUseCase>(),
          ),
        ),
      ],
      child: const GroceryListSettingsPage(),
    );
  }
}
