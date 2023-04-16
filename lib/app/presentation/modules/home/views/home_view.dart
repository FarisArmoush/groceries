import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/presentation/modules/home/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/app/presentation/modules/home/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/app/presentation/modules/home/widgets/home_form.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider<GroceryListsBloc>(
              create: (context) => GroceryListsBloc()..add(LoadGroceryLists()),
            ),
            BlocProvider<MyTasksBloc>(
              create: (context) => MyTasksBloc()..add(LoadMyTasks()),
            ),
          ],
          child: const HomeForm(),
        ),
      ),
    );
  }
}
