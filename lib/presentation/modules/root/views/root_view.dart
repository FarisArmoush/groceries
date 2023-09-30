part of '../root.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RootNavigationBloc(),
        ),
        BlocProvider(
          create: (context) => GroceryListsBloc(
            context.read<GroceryListsUseCase>(),
          )..add(LoadGroceryLists()),
        ),
        BlocProvider(
          create: (context) => MyTasksBloc(
            context.read<MyTasksUseCase>(),
          )..add(LoadMyTasks()),
        ),
        BlocProvider(
          create: (context) => RecipesBloc(
            context.read<RecipesUseCase>(),
          )..add(LoadRecipes()),
        ),
      ],
      child: const RootForm(),
    );
  }
}
