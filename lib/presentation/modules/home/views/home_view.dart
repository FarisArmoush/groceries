import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_form.dart';
import 'package:groceries/presentation/modules/home/widgets/home_header.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_form.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.04,
            ),
            const HomeHeader(),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            const GroceryListsForm(),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            const MyTasksForm(),
          ],
        ),
      ),
    );
  }
}
