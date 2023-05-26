import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/buttons/bottom_sheet_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class EditListImageBottomSheet extends StatelessWidget {
  const EditListImageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        BottomSheetButton(
          text: 'Take a photo',
          iconPath: Assets.svg.icCamera.path,
          onTap: () {},
        ),
        BottomSheetButton(
          text: 'Upload a photo from gallery',
          iconPath: Assets.svg.icCamera.path,
          onTap: () {},
        ),
      ],
    );
  }
}
