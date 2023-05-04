import 'package:flutter/material.dart';
import 'package:groceries/app/utils/constants/color_constants.dart';

class DisabledButtonStyle extends ButtonStyle {
  DisabledButtonStyle()
      : super(
          backgroundColor: MaterialStateProperty.all<Color>(
            ColorConstants.lightGrey,
          ),
          elevation: MaterialStateProperty.all<double>(0),
          foregroundColor: MaterialStateProperty.all<Color>(
            ColorConstants.white,
          ),
        );
}
