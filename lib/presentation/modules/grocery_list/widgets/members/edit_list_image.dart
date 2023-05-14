import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class EditListImage extends StatelessWidget {
  const EditListImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CachedImage(
          imageUrl:
              'https://www.searchenginejournal.com/wp-content/uploads/2022/06/image-search-1600-x-840-px-62c6dc4ff1eee-sej.png',
          height: 200,
          width: double.infinity,
          boxShape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: AppColors.black.withOpacity(0.7),
            child: IconButton(
              onPressed: () {},
              icon: Assets.svg.icEdit.svg(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
