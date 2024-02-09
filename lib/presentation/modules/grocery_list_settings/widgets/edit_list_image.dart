import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/presentation/widgets/upload_image_bottom_sheet.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

class EditListImage extends StatelessWidget {
  const EditListImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CachedImage(
          height: 200,
          width: double.infinity,
          boxShape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        CircleAvatar(
          backgroundColor: AppColors.black.withOpacity(0.7),
          child: IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                elevation: 0,
                showDragHandle: true,
                builder: (context) => UploadImageBottomSheet(
                  onTakePhoto: () {},
                  onUploadPhoto: () {},
                ),
              );
            },
            icon: Assets.icons.edit.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ).allPadding(8),
      ],
    );
  }
}
