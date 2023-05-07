import 'package:flutter/material.dart';
import 'package:groceries/app/utils/constants/app_colors.dart';

class DisabledButtonStyle extends ButtonStyle {
  DisabledButtonStyle()
      : super(
          backgroundColor: MaterialStateProperty.all<Color>(
            AppColors.lightGrey,
          ),
          elevation: MaterialStateProperty.all<double>(0),
          foregroundColor: MaterialStateProperty.all<Color>(
            AppColors.white,
          ),
        );
}
