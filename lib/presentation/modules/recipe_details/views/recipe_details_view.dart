part of '../recipe_details.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({
    required this.recipeModel,
    super.key,
  });

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecipeDetailsBloc>(
      create: (context) => RecipeDetailsBloc(),
      child: RecipeDetailsForm(
        recipeModel: recipeModel,
      ),
    );
  }
}
