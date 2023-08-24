part of '../root.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GroceryListsBloc>(
          create: (context) => GroceryListsBloc(
            context.read<GroceryListsUseCase>(),
          )..add(
              LoadGroceryLists(),
            ),
          child: const HomeView(),
        ),
        BlocProvider<MyTasksBloc>(
          create: (context) => MyTasksBloc(
            context.read<MyTasksUseCase>(),
          )..add(
              LoadMyTasks(),
            ),
          child: const HomeView(),
        ),
        BlocProvider<RecipesBloc>(
          create: (context) => RecipesBloc(
            context.read<RecipesUseCase>(),
          )..add(
              LoadRecipes(),
            ),
          child: const RecipesView(),
        ),
      ],
      child: const RootForm(),
    );
  }
}
