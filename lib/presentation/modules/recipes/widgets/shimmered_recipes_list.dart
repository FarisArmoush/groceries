part of '../recipes.dart';

class ShimmeredRecipesList extends StatelessWidget {
  const ShimmeredRecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 32,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const ShimmeredRecipeCard();
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: context.deviceHeight * 0.04,
        );
      },
    );
  }
}

class ShimmeredRecipeCard extends StatelessWidget {
  const ShimmeredRecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerSkeleton(
          height: context.deviceHeight * 0.025,
          width: context.deviceWidth * 0.5,
          borderRadius: BorderRadius.circular(16),
        ),
        SizedBox(
          height: context.deviceHeight * 0.025,
        ),
        ShimmerSkeleton(
          borderRadius: BorderRadius.circular(16),
          height: context.deviceHeight * 0.2,
          width: context.deviceWidth,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
      ],
    );
  }
}
