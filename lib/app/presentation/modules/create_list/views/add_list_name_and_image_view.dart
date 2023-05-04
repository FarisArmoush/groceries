import 'package:flutter/material.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/modules/create_list/widgets/add_image_button.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';
import 'package:groceries/app/presentation/widgets/cached_image.dart';

class AddListNameAndImageView extends StatelessWidget {
  const AddListNameAndImageView({Key? key}) : super(key: key);

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
