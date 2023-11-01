part of '../grocery_list_details.dart';

class GroceryItemDetailsBottomSheet extends StatelessWidget {
  const GroceryItemDetailsBottomSheet({
    required this.groceryModel,
    super.key,
  });

  final GroceryModel groceryModel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              groceryModel.name ?? 'null',
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
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
          initialValue: groceryModel.notes,
          labelText: 'Notes',
          enabledBorder: _border(context),
          focusedBorder: _border(context),
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        if (groceryModel.image!.isNotEmpty) ...[
          CachedImage(
            height: context.deviceHeight * 0.3,
            width: double.infinity,
            boxShape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
            imageUrl: groceryModel.image ?? '',
          ),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          BottomSheetButton(
            text: 'Remove Image',
            iconPath: Assets.svg.icImage.path,
            onTap: () {},
          ),
        ] else
          BottomSheetButton(
            text: 'Add Image',
            iconPath: Assets.svg.icImage.path,
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
          iconPath: Assets.svg.icTrash.path,
          onTap: () {},
        ),
        BottomSheetButton(
          text: 'Mark as done',
          iconPath: Assets.svg.icDoubleCheck.path,
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
