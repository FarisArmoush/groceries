import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/shimmer_skeleton.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class ShimmeredRecipeCard extends StatelessWidget {
  const ShimmeredRecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShimmerSkeleton(
          height: context.deviceHeight * 0.04,
          width: context.deviceWidth * 0.5,
          borderRadius: BorderRadiusDirectional.circular(8),
        ),
        SizedBox(
          height: context.deviceHeight * 0.025,
        ),
        ShimmerSkeleton(
          borderRadius: BorderRadiusDirectional.circular(16),
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
