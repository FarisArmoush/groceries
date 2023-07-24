import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipes_form.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInAnimation(
          child: Text(AppTranslations.recipes),
        ),
        leading: const SizedBox.shrink(),
        actions: [
          FadeInAnimation(
            child: IconButton(
              onPressed: () => context.pushNamed(AppNamedRoutes.createRecipe),
              icon: Assets.svg.icPlusCircle.svg(
                color: context.theme.primaryColorLight,
              ),
            ),
          ),
        ],
      ),
      body: const RecipesForm(),
    );
  }
}
