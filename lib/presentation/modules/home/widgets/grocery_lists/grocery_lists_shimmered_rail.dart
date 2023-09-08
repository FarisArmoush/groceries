part of '../../home.dart';

class GroceryListsShimmeredRail extends StatelessWidget {
  const GroceryListsShimmeredRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerSkeleton(
          height: context.deviceHeight * 0.015,
          width: context.deviceWidth * 0.4,
          borderRadius: BorderRadius.circular(16),
        ),
        SizedBox(height: context.deviceHeight * 0.03),
        ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          padding: const EdgeInsets.symmetric(vertical: 4),
          itemBuilder: (context, index) {
            return const GroceryListShimmeredCard();
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: context.deviceHeight * 0.01,
            );
          },
        ),
      ],
    );
  }
}
