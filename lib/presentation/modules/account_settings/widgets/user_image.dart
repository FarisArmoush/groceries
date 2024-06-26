import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries_theme/app_theme.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(2),
      decoration: BoxDecoration(
        color: AppColors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: context.theme.primaryColorLight,
          width: 3,
        ),
      ),
      child: CachedImage(
        imageUrl: faker.image.image(),
        height: context.deviceHeight * 0.2,
        fit: BoxFit.contain,
        progressIndicatorBuilder: (context, url, progress) {
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
