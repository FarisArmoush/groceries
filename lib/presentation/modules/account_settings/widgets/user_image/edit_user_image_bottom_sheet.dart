import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/buttons/bottom_sheet_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class EditUserImageBottomSheet extends StatelessWidget {
  const EditUserImageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        BottomSheetButton(
          text: 'Take a photo',
          iconPath: Assets.svg.icCamera.path,
          onTap: () {},
        ),
        BottomSheetButton(
          text: 'Pick a photo',
          iconPath: Assets.svg.icImage.path,
          onTap: () {},
        ),
      ],
    );
  }
}
