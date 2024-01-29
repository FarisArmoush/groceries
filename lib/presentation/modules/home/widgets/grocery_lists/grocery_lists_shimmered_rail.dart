import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_list_shimmered_card.dart';
import 'package:groceries/presentation/widgets/shimmer_skeleton.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListsShimmeredRail extends StatelessWidget {
  const GroceryListsShimmeredRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ShimmerSkeleton(
          height: context.deviceHeight * 0.015,
          width: context.deviceWidth * 0.4,
          borderRadius: BorderRadius.circular(16),
        ),
        SizedBox(height: context.deviceHeight * 0.03),
        ListView.separated(
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
