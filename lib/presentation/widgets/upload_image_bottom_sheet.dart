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

  final VoidCallback onTakePhoto;
  final VoidCallback onUploadPhoto;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppPaddings.bottomSheetPadding(context),
      shrinkWrap: true,
      children: [
        BottomSheetButton(
          text: AppTranslations.general.takePhoto,
          iconPath: Assets.svg.icCamera.path,
          onTap: onTakePhoto,
        ),
        BottomSheetButton(
          text: AppTranslations.general.uploadPhotoFromGallery,
          iconPath: Assets.svg.icImage.path,
          onTap: onUploadPhoto,
        ),
      ],
    );
  }
}
