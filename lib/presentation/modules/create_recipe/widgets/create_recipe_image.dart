import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/cached_image_with_edit_button.dart';
import 'package:groceries/presentation/widgets/upload_image_bottom_sheet.dart';
import 'package:groceries/utils/constants/app_colors.dart';

class CreateRecipeImage extends StatelessWidget {
  const CreateRecipeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedImageWithEditButton(
      imageUrl: mockImage,
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        elevation: 0,
        showDragHandle: true,
        builder: (context) => UploadImageBottomSheet(
          onTakePhoto: () {},
          onUploadPhoto: () {},
        ),
      ),
    );
  }
}
