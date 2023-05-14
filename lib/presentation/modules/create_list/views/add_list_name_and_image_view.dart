import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/create_list/widgets/add_image_button.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';

class AddListNameAndImageView extends StatelessWidget {
  const AddListNameAndImageView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 32,
      ),
      children: [
        CachedImage(
          imageUrl: null,
          height: size.height * 0.15,
        ),
        const AddImageButton(),
        SizedBox(
          height: size.height * 0.05,
        ),
        AppTextField(
          labelText: AppTranslations.listName,
        ),
      ],
    );
  }
}
