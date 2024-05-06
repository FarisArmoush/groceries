import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/shimmer_skeleton.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListShimmeredCard extends StatelessWidget {
  const GroceryListShimmeredCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconShimmer(context),
            ShimmerSkeleton(
              height: context.deviceHeight * 0.045,
              width: context.deviceWidth * 0.06,
              borderRadius: BorderRadiusDirectional.circular(16),
            ),
          ],
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _nameShimmer(context),
            SizedBox(
              height: context.deviceHeight * 0.01,
            ),
            _tasksBoxShimmer(context),
          ],
        ),
      ],
    );
  }

  Widget _iconShimmer(BuildContext context) {
    return ShimmerSkeleton(
      height: context.deviceHeight * 0.045,
      width: context.deviceWidth * 0.1,
      borderRadius: BorderRadiusDirectional.circular(64),
    );
  }

  Widget _tasksBoxShimmer(BuildContext context) {
    return ShimmerSkeleton(
      height: context.deviceHeight * 0.02,
      width: context.deviceWidth * 0.2,
      borderRadius: BorderRadiusDirectional.circular(12),
    );
  }

  Widget _nameShimmer(BuildContext context) {
    return ShimmerSkeleton(
      height: context.deviceHeight * 0.015,
      width: context.deviceWidth * 0.5,
      borderRadius: BorderRadiusDirectional.circular(12),
    );
  }
}
