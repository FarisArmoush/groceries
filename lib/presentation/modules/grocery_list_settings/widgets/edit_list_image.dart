import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/edit_list_image_bottom_sheet.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

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
        CircleAvatar(
          backgroundColor: AppColors.black.withOpacity(0.7),
          child: IconButton(
            onPressed: () {
              showModalBottomSheet<EditListImageBottomSheet>(
                context: context,
                elevation: 0,
                showDragHandle: true,
                builder: (context) => const EditListImageBottomSheet(),
              );
            },
            icon: Assets.svg.icEdit.svg(
              color: AppColors.white,
            ),
          ),
        ).allPadding(8),
      ],
    );
  }
}
