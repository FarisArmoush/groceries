part of '../recipe_details.dart';

class RecipeDetailsPage extends StatelessWidget {
  const RecipeDetailsPage({
    required this.recipeModel,
    super.key,
  });

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          GroceriesAppBar(
            title: recipeModel.name!,
            trailing: IconButton(
              onPressed: () => showModalBottomSheet<void>(
                context: context,
                elevation: 0,
                showDragHandle: true,
                builder: (context) => const RecipeOptionsBottomSheet(),
              ),
              icon: Assets.svg.icVerticalThreeDots.svg(
                color: context.theme.hintColor,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 12,
            ),
            sliver: SliverList.list(
              children: [
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
          ),
        ],
      ),
    );
  }
}
