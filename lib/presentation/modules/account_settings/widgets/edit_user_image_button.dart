import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class EditUserImageButton extends StatelessWidget {
  const EditUserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Assets.svg.icEdit.svg(
        color: Theme.of(context).primaryColorLight,
      ),
      label: const Text('Edit Image'),
    );
  }
}
