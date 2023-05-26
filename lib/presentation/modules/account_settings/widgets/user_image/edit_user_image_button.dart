import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/user_image/edit_user_image_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

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
        color: Theme.of(context).primaryColorLight,
      ),
      label: const Text('Edit Image'),
    );
  }
}
