import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/bottom_sheet_button.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/presentation/widgets/upload_image_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class GroceryItemDetailsBottomSheet extends StatelessWidget {
  const GroceryItemDetailsBottomSheet({
    required this.groceryModel,
    super.key,
  });

  final GroceryModel? groceryModel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppPaddings.bottomSheet(context),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              groceryModel?.name ?? '',
              style: TextStyle(
                fontWeight: AppFontWeights.regular,
                color: context.theme.primaryColor,
                fontSize: 18,
              ),
            ),
            TextButton(
              child: Text(
                AppTranslations.general.close,
              ),
              onPressed: () => context.pop(),
            ),
          ],
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        AppTextField(
          initialValue: groceryModel?.notes,
          labelText: 'Notes',
          enabledBorder: _border(context),
          focusedBorder: _border(context),
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        if (groceryModel?.image?.isNotEmpty ?? false) ...[
          CachedImage(
            height: context.deviceHeight * 0.3,
            width: double.infinity,
            boxShape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
            imageUrl: groceryModel?.image ?? '',
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          BottomSheetButton(
            text: 'Remove Image',
            iconPath: Assets.icons.image.path,
            onTap: () {},
          ),
        ] else
          BottomSheetButton(
            text: 'Add Image',
            iconPath: Assets.icons.image.path,
            onTap: () => showModalBottomSheet<void>(
              context: context,
              elevation: 0,
              showDragHandle: true,
              builder: (context) => UploadImageBottomSheet(
                onTakePhoto: () {},
                onUploadPhoto: () {},
              ),
            ),
          ),
        BottomSheetButton(
          text: 'Remove Item',
          iconPath: Assets.icons.trash.path,
          onTap: () {},
        ),
        BottomSheetButton(
          text: 'Mark as done',
          iconPath: Assets.icons.doubleCheck.path,
          onTap: () {},
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
      ],
    );
  }

  OutlineInputBorder _border(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: context.theme.primaryColorLight,
      ),
    );
  }
}
