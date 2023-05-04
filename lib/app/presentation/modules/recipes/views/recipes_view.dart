import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/app/presentation/modules/recipes/widgets/recipes_form.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
