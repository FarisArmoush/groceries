import 'package:flutter/widgets.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';

abstract final class AppPaddings {
  const AppPaddings._();
  static EdgeInsetsDirectional scaffold(BuildContext context) {
    return EdgeInsetsDirectional.only(
      start: context.deviceWidth * 0.03,
      end: context.deviceWidth * 0.03,
      top: context.deviceHeight * 0.035,
      bottom: context.deviceHeight * 0.04,
    );
  }

  static EdgeInsetsDirectional bottomSheet(BuildContext context) {
    return EdgeInsetsDirectional.only(
      start: context.deviceWidth * 0.05,
      end: context.deviceWidth * 0.05,
      top: context.deviceHeight * 0.01,
      bottom: context.deviceHeight * 0.035,
    );
  }

  static EdgeInsetsDirectional scaffoldHorizontal(BuildContext context) {
    return EdgeInsetsDirectional.symmetric(
      horizontal: context.deviceWidth * 0.03,
    );
  }

  static EdgeInsetsDirectional scaffoldVertical(BuildContext context) {
    return EdgeInsetsDirectional.only(
      top: context.deviceHeight * 0.035,
      bottom: context.deviceHeight * 0.04,
    );
  }
}
