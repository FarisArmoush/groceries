import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_image/edit_user_image_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class EditUserImageButton extends StatelessWidget {
  const EditUserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => showModalBottomSheet<EditUserImageBottomSheet>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => const EditUserImageBottomSheet(),
      ),
      icon: Assets.svg.icEdit.svg(
        color: context.theme.primaryColorLight,
      ),
      label: Text(AppTranslations.editUserImage),
    );
  }
}
