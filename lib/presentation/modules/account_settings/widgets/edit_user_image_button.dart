import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/widgets/upload_image_bottom_sheet.dart';

class EditUserImageButton extends StatelessWidget {
  const EditUserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      label: Text(
        Translations.accountSettings.editUserImage,
      ),
      icon: Assets.icons.edit.svg(
        colorFilter: ColorFilter.mode(
          context.theme.primaryColorLight,
          BlendMode.srcIn,
        ),
      ),
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => UploadImageBottomSheet(
          onTakePhoto: () {},
          onUploadPhoto: () {},
        ),
      ),
    );
  }
}
