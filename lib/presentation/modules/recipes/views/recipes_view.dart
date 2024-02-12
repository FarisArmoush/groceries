import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipes_app_bar.dart';
import 'package:groceries/presentation/modules/recipes/widgets/recipes_view_body.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          context.read<RecipesBloc>().add(const RecipesEvent.loadMyRecipes());
        },
        child: CustomScrollView(
          slivers: [
            const RecipesAppBar(),
            const RecipesViewBody().asSliver(),
          ],
        ),
      ),
    );
  }
}
