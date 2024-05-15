import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/widgets/bottom_sheet_button.dart';

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
            text: Translations.general.takePhoto,
            iconPath: Assets.icons.camera.path,
            onTap: onTakePhoto ?? () {},
          ),
        ),
        Visibility(
          visible: onUploadPhoto != null,
          child: BottomSheetButton(
            text: Translations.general.uploadPhotoFromGallery,
            iconPath: Assets.icons.image.path,
            onTap: onUploadPhoto ?? () {},
          ),
        ),
      ],
    );
  }
}
