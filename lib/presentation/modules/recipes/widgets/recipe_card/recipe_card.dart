part of '../../recipes.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    required this.recipeModel,
    required this.onTap,
    super.key,
  });

  final VoidCallback onTap;
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecipeCardTitle(name: recipeModel.name),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        RecipeCardImage(
          recipeModel: recipeModel,
          onTap: onTap,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
      ],
    );
  }
}
