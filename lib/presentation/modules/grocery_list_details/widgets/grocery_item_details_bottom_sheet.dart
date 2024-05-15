import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/item_priority_button.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/bottom_sheet_button.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/presentation/widgets/upload_image_bottom_sheet.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries_theme/app_theme.dart';

class GroceryItemDetailsBottomSheet extends StatelessWidget {
  const GroceryItemDetailsBottomSheet({
    required this.groceryModel,
    super.key,
  });

  final GroceryEntity? groceryModel;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: AppPaddings.bottomSheet(context),
      sliver: SliverList.list(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                groceryModel?.name ?? '',
                style: TextStyle(
                  fontWeight: AppFontWeights.medium,
                  color: context.theme.primaryColor,
                  fontSize: 18,
                ),
              ),
              TextButton(
                child: Text(
                  Translations.general.close,
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
            labelText: Translations.groceryLists.notes,
            enabledBorder: _border(context),
            focusedBorder: _border(context),
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          ItemPriorityButton(
            groceryModel: groceryModel,
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          if (groceryModel?.image?.isNotEmpty ?? false) ...[
            CachedImage(
              height: context.deviceHeight * 0.3,
              width: double.infinity,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadiusDirectional.circular(16),
              imageUrl: groceryModel?.image ?? '',
            ),
            SizedBox(
              height: context.deviceHeight * 0.02,
            ),
            BottomSheetButton(
              text: Translations.groceryLists.removeImage,
              iconPath: Assets.icons.trash.path,
              onTap: () {},
            ),
          ] else
            BottomSheetButton(
              text: Translations.groceryLists.addImage,
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
            text: Translations.groceryLists.markAsDone,
            iconPath: Assets.icons.doubleCheck.path,
            onTap: () {},
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
        ],
      ),
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
