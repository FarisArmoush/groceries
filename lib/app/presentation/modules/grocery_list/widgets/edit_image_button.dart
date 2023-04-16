import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';

class EditImageButton extends StatelessWidget {
  const EditImageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Edit Image',
        style: AppTextStyles.poppinsMedium(
          color: Theme.of(context).primaryColorLight,
          fontSize: 16,
        ),
      ),
    );
  }
}
