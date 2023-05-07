import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/home/widgets/grocery_lists/grocery_lists_form.dart';
import 'package:groceries/app/presentation/modules/home/widgets/home_header.dart';
import 'package:groceries/app/presentation/modules/home/widgets/my_tasks/my_tasks_form.dart';
import 'package:groceries/app/utils/constants/app_colors.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({Key? key}) : super(key: key);

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
        Container(
          height: 40,
          width: size.width,
          color: AppColors.darkRed,
        ),
        Container(
          height: 40,
          width: size.width,
          color: AppColors.veryLightGrey,
        ),
      ],
    );
  }
}
