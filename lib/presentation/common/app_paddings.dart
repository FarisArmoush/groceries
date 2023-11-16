import 'package:flutter/widgets.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

abstract final class AppPaddings {
  AppPaddings._();
  static EdgeInsetsDirectional scaffoldPadding(BuildContext context) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: context.deviceWidth * 0.02,
      vertical: context.deviceHeight * 0.02,
    );
  }

  static EdgeInsetsDirectional bottomSheetPadding(BuildContext context) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: context.deviceWidth * 0.05,
      vertical: context.deviceHeight * 0.035,
    );
  }
}
