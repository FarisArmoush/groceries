import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/widgets/bottom_sheet_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class UploadImageBottomSheet extends StatelessWidget {
  const UploadImageBottomSheet({
    required this.onTakePhoto,
    required this.onUploadPhoto,
    super.key,
  });

  final void Function()? onTakePhoto;
  final void Function()? onUploadPhoto;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppPaddings.bottomSheet(context),
      shrinkWrap: true,
      children: [
        Visibility(
          visible: onTakePhoto != null,
          child: BottomSheetButton(
            text: AppTranslations.general.takePhoto,
            iconPath: Assets.icons.camera.path,
            onTap: onTakePhoto ?? () {},
          ),
        ),
        Visibility(
          visible: onUploadPhoto != null,
          child: BottomSheetButton(
            text: AppTranslations.general.uploadPhotoFromGallery,
            iconPath: Assets.icons.image.path,
            onTap: onUploadPhoto ?? () {},
          ),
        ),
      ],
    );
  }
}
