import 'package:flutter/material.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/recipes/widgets/shimmered_recipe_card.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ShimmeredRecipesList extends StatelessWidget {
  const ShimmeredRecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      itemCount: 3,
      padding: AppPaddings.scaffoldPadding(context),
      itemBuilder: (context, index) => const ShimmeredRecipeCard(),
      separatorBuilder: (context, index) => SizedBox(
        height: context.deviceHeight * 0.04,
      ),
    );
  }
}
