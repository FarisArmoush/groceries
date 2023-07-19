import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: context.theme.primaryColorLight,
          width: 3,
        ),
      ),
      child: CachedImage(
        imageUrl:
            'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
        height: context.deviceHeight * 0.2,
        boxFit: BoxFit.contain,
      ),
    );
  }
}
