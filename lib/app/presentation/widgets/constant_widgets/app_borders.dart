import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/color_constants.dart';

class AppBorders {
  static OutlineInputBorder tfCircularBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorConstants.lightGrey,
      ),
      borderRadius: BorderRadius.circular(55),
    );
  }

  static OutlineInputBorder tfActiveCircularBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red.shade500,
      ),
      borderRadius: BorderRadius.circular(55),
    );
  }

  static OutlineInputBorder tfErrorCircularBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorConstants.red,
      ),
      borderRadius: BorderRadius.circular(55),
    );
  }

  static OutlineInputBorder tfRectangleBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorConstants.lightGrey,
      ),
      borderRadius: BorderRadius.circular(5),
    );
  }

  static OutlineInputBorder tfErrorRectangleBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorConstants.lightGrey,
      ),
      borderRadius: BorderRadius.circular(5),
    );
  }

  static BorderRadius messageIsSentByMeBorder() {
    return const BorderRadius.only(
      topLeft: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
    );
  }

  static BorderRadius messageIsSentByOthersBorder() {
    return const BorderRadius.only(
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
      topRight: Radius.circular(10),
    );
  }
}
