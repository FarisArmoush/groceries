import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/widgets/bottom_sheet_button.dart';

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
          text: Translations.groceryLists.edit,
          iconPath: Assets.icons.edit.path,
        ),
        BottomSheetButton(
          onTap: () {},
          text: Translations.groceryLists.share,
          iconPath: Assets.icons.share.path,
        ),
        BottomSheetButton(
          onTap: () {},
          text: Translations.groceryLists.delete,
          iconPath: Assets.icons.trash.path,
          color: context.theme.primaryColorLight,
        ),
      ],
    );
  }
}
