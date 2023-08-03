// ignore_for_file: deprecated_member_use
part of '../root.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GroceryListsBloc>(
          create: (context) => GroceryListsBloc()..add(LoadGroceryLists()),
          child: const HomeView(),
        ),
        BlocProvider<MyTasksBloc>(
          create: (context) => MyTasksBloc()..add(LoadMyTasks()),
          child: const HomeView(),
        ),
        BlocProvider<RecipesBloc>(
          create: (context) => RecipesBloc()..add(LoadRecipes()),
          child: const RecipesView(),
        ),
      ],
      child: const RootForm(),
    );
  }
}
