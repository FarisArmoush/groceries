import 'package:flutter/material.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/widgets/bottom_sheet_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipeOptionsBottomSheet extends StatelessWidget {
  const RecipeOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: AppPaddings.bottomSheet(context),
      children: [
        BottomSheetButton(
          onTap: () {},
          text: 'Edit',
          iconPath: Assets.icons.edit.path,
        ),
        BottomSheetButton(
          onTap: () {},
          text: 'Share',
          iconPath: Assets.icons.share.path,
        ),
        BottomSheetButton(
          onTap: () {},
          text: 'Delete',
          iconPath: Assets.icons.trash.path,
          color: context.theme.primaryColorLight,
        ),
      ],
    );
  }
}
