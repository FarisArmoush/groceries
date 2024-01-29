import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/shimmer_skeleton.dart';
import 'package:groceries/utils/constants/app_colors.dart';

class MyTasksShimmeredCard extends StatelessWidget {
  const MyTasksShimmeredCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.transparent,
      contentPadding: EdgeInsets.zero,
      leading: ShimmerSkeleton(
        borderRadius: BorderRadius.circular(64),
        height: 50,
        width: 50,
      ),
      title: const Row(
        children: [
          Expanded(
            flex: 5,
            child: ShimmerSkeleton(
              height: 10,
            ),
          ),
          Expanded(child: SizedBox.shrink()),
          Expanded(
            flex: 2,
            child: ShimmerSkeleton(
              height: 8,
            ),
          ),
        ],
      ),
      subtitle: const ShimmerSkeleton(
        height: 10,
      ),
    );
  }
}
