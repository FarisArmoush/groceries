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
          )..add(const GroceryListsEvent.loadGroceryLists()),
        ),
        BlocProvider(
          create: (context) => MyTasksBloc(
            context.read<MyTasksUseCase>(),
          )..add(const MyTasksEvent.loadMyTasks()),
        ),
        BlocProvider(
          create: (context) => RecipesBloc(
            context.read<RecipesUseCase>(),
          )..add(const RecipesEvent.loadMyRecipes()),
        ),
      ],
      child: const RootForm(),
    );
  }
}
