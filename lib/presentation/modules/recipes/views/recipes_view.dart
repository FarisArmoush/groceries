import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipes_form.dart';
import 'package:groceries/presentation/widgets/app_bar_title.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(
          AppTranslations.recipes,
        ),
        leading: const SizedBox.shrink(),
      ),
      body: BlocProvider(
        create: (context) => RecipesBloc()..add(LoadRecipes()),
        child: const RecipesForm(),
      ),
    );
  }
}
