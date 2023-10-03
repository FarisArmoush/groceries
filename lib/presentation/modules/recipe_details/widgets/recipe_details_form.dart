part of '../recipe_details.dart';

class RecipeDetailsForm extends StatelessWidget {
  const RecipeDetailsForm({
    required this.recipeModel,
    super.key,
  });

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Assets.svg.icShare.svg(
              color: context.theme.hintColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Assets.svg.icVerticalThreeDots.svg(
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
          Text(
            recipeModel.name ?? 'null',
            style: TextStyle(
              color: context.theme.primaryColor,
              fontFamily: AppFonts.semiBold(context),
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          CachedImage(
            imageUrl: recipeModel.imageUrl ?? '',
            height: context.deviceHeight * 0.3,
            width: context.deviceWidth,
            boxShape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(12),
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
