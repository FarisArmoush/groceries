import 'package:flutter/widgets.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

abstract final class AppPaddings {
  AppPaddings._();
  static EdgeInsetsDirectional scaffoldPadding(BuildContext context) {
    return EdgeInsetsDirectional.only(
      start: context.deviceWidth * 0.03,
      end: context.deviceWidth * 0.03,
      top: context.deviceHeight * 0.035,
      bottom: context.deviceHeight * 0.04,
    );
  }

  static EdgeInsetsDirectional bottomSheetPadding(BuildContext context) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: context.deviceWidth * 0.05,
      vertical: context.deviceHeight * 0.035,
    );
  }
}
