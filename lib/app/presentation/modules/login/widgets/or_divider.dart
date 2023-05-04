import 'package:flutter/material.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'or',
      style: AppTextStyles.poppinsMedium(
        color: Theme.of(context).primaryColor,
        fontSize: 18,
      ),
      textAlign: TextAlign.center,
    );
  }
}
