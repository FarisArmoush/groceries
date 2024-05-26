import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_shimmered_card.dart';
import 'package:groceries/presentation/widgets/shimmer_skeleton.dart';

class MyTasksShimmeredRail extends StatelessWidget {
  const MyTasksShimmeredRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        ShimmerSkeleton(
          height: context.deviceHeight * 0.015,
          width: context.deviceWidth * 0.4,
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        SizedBox(
          height: context.deviceHeight * 0.025,
        ),
        ListView.separated(
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return const MyTasksShimmeredCard();
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
