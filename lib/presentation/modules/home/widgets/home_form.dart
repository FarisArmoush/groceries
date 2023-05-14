import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_form.dart';
import 'package:groceries/presentation/modules/home/widgets/home_header.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_form.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        const HomeHeader(),
        SizedBox(
          height: size.height * 0.05,
        ),
        const GroceryListsForm(),
        SizedBox(
          height: size.height * 0.05,
        ),
        const MyTasksForm(),
      ],
    );
  }
}
