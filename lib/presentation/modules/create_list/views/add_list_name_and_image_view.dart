import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/create_list/widgets/add_image_button.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class AddListNameAndImageView extends StatelessWidget {
  const AddListNameAndImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 32,
      ),
      children: [
        CachedImage(
          imageUrl:
              'https://imglarger.com/Images/before-after/ai-image-enlarger-1-after-2.jpg',
          height: context.deviceHeight * 0.3,
          borderRadius: BorderRadius.circular(16),
          boxShape: BoxShape.rectangle,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        const AddImageButton(),
        SizedBox(
          height: context.deviceHeight * 0.05,
        ),
        AppTextField(
          labelText: AppTranslations.listName,
        ),
        SizedBox(
          height: context.deviceHeight * 0.05,
        ),
      ],
    );
  }
}
