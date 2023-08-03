part of '../recipes.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({
    required this.recipeModel,
    super.key,
  });
  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeModel.name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Assets.svg.icShare.svg(
              color: context.theme.hintColor,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 12,
        ),
        children: [
          Hero(
            tag: recipeModel.uid,
            child: CachedImage(
              imageUrl: recipeModel.imageUrl,
              height: context.deviceHeight * 0.3,
              width: context.deviceWidth,
              boxShape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.05,
          ),
          const RecipeDetailsListHeader('Ingredients'),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          RecipeItemsList(recipeModel: recipeModel),
          Divider(
            height: context.deviceHeight * 0.075,
          ),
          const RecipeDetailsListHeader('Instructions'),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const RecipeStepsList(),
        ],
      ),
    );
  }
}
