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
        _nameAndDoneButtonRow(context),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        AppTextField(
          maxLines: 3,
          initialValue: groceryModel.notes,
          labelText: 'Notes',
          enabledBorder: _border(context),
          focusedBorder: _border(context),
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        if (groceryModel.imageUrl.isNotEmpty)
          _image(context)
        else
          _addImageButton(context),
        SizedBox(
          height: context.deviceHeight * 0.01,
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

  ElevatedButton _addImageButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showModalBottomSheet<UploadImageBottomSheet>(
        context: context,
        elevation: 0,
        showDragHandle: true,
        builder: (context) => UploadImageBottomSheet(
          onTakePhoto: () {},
          onUploadPhoto: () {},
        ),
      ),
      child: const Text('Add Image'),
    );
  }

  Row _nameAndDoneButtonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          groceryModel.name,
          style: TextStyle(
            color: context.theme.primaryColor,
            fontSize: 24,
            fontFamily: AppFonts.semiBold(context),
          ),
        ),
        TextButton(
          onPressed: () => context.pop(),
          style: TextButton.styleFrom(
            foregroundColor: context.theme.primaryColor,
          ),
          child: Text(AppTranslations.general.done),
        ),
      ],
    );
  }

  Stack _image(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CachedImage(
          height: context.deviceHeight * 0.3,
          width: double.infinity,
          boxShape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          imageUrl: groceryModel.imageUrl,
        ),
        CircleAvatar(
          backgroundColor: AppColors.black.withOpacity(0.8),
          child: IconButton(
            onPressed: () {},
            icon: Assets.svg.icTrash.svg(
              color: AppColors.white,
            ),
          ),
        ).allPadding(8),
      ],
    );
  }
}
