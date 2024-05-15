import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/presentation/widgets/upload_image_bottom_sheet.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class EditListImage extends StatelessWidget {
  const EditListImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CachedImage(
          imageUrl: faker.image.image(),
          height: context.deviceHeight * 0.225,
          width: context.deviceWidth,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        CircleAvatar(
          backgroundColor: AppColors.black.withOpacity(0.7),
          child: IconButton(
            icon: Assets.icons.edit.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () => showModalBottomSheet<void>(
              context: context,
              elevation: 0,
              showDragHandle: true,
              builder: (context) => UploadImageBottomSheet(
                onTakePhoto: () {},
                onUploadPhoto: () {},
              ),
            ),
          ),
        ).allPadding(8),
      ],
    );
  }
}
