import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/grocery_lists_form.dart';
import 'package:groceries/app/presentation/modules/home/widgets/header/home_header.dart';
import 'package:groceries/app/presentation/modules/home/widgets/my_tasks/my_tasks_form.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 24,
      ),
      children: const [
        HomeHeader(),
        GroceryListsForm(),
        MyTasksForm(),
      ],
    );
  }
}
