import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/utils/constants/app_colors.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';
import 'package:groceries/gen/assets.gen.dart';

part '__snackbar_message.dart';

/// A utility class for creating [SnackBar]s with different types of messages
/// (success, informative, warning, and error).
///
/// This class contains four static methods [success], [informative], [warning],
/// and [error] that return a [SnackBar] with the corresponding message type.
///
/// Each method requires a [String] message parameter.
///
/// The [SnackBar]s created by this class have a fixed [_margin], [_behavior],
/// [_elevation], and [_widthSpace], which are defined as private static
/// constants.
///
/// The messages displayed in the [SnackBar]s consist of an icon (SVG image)
/// and the provided message. The [SvgPicture] widget is used to display the
/// icon, and the [_SnackbarMessage] widget is used to display the message.
class AppSnackBars {
  AppSnackBars._();

  /// Creates and returns a [SnackBar] with a success message.
  /// The [SnackBar] has a green background color and displays
  /// an SVG icon of a checkmark along with the provided message.
  ///
  /// @param message the message to display in the [SnackBar].
  ///
  /// @return a [SnackBar] with a success message.
  static SnackBar success({required String message}) {
    return SnackBar(
      margin: _margin,
      behavior: _behavior,
      elevation: _elevation,
      backgroundColor: Colors.green,
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            Assets.svg.icCheckCircle,
            color: AppColors.white,
          ),
          const SizedBox(width: 16),
          _SnackbarMessage(message: message),
        ],
      ),
    );
  }

  /// Creates and returns a [SnackBar] with an informative message.
  ///
  /// The [SnackBar] has a blue background color and displays an
  /// SVG icon of an information symbol along with the provided message.
  ///
  /// @param message the message to display in the [SnackBar].
  ///
  /// @return a [SnackBar] with an informative message.
  static SnackBar informative({required String message}) {
    return SnackBar(
      margin: _margin,
      behavior: _behavior,
      elevation: _elevation,
      backgroundColor: Colors.blue,
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            Assets.svg.icInfo,
            color: AppColors.white,
          ),
          const SizedBox(width: 16),
          _SnackbarMessage(message: message),
        ],
      ),
    );
  }

  /// Creates and returns a [SnackBar] with a warning message.
  ///
  /// The [SnackBar] has an orange background color and displays an
  /// SVG icon of an exclamation triangle along with the provided warning.
  ///
  /// @param message the message to display in the [SnackBar].
  ///
  /// @return a [SnackBar] with a warning message.
  static SnackBar warning({required String warning}) {
    return SnackBar(
      margin: _margin,
      behavior: _behavior,
      elevation: _elevation,
      backgroundColor: Colors.orange,
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            Assets.svg.icAlertTriangle,
            color: AppColors.white,
          ),
          const SizedBox(width: 16),
          _SnackbarMessage(message: warning),
        ],
      ),
    );
  }

  /// Creates and returns a [SnackBar] with an error message.
  ///
  /// The [SnackBar] has a red background color and displays an
  /// SVG icon of a circular x along with the provided error.
  ///
  /// @param message the message to display in the [SnackBar].
  ///
  /// @return a [SnackBar] with a error message.
  static SnackBar error({required String error}) {
    return SnackBar(
      margin: _margin,
      behavior: _behavior,
      elevation: _elevation,
      backgroundColor: AppColors.lightRed,
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            Assets.svg.icCircleX,
            color: AppColors.white,
          ),
          const SizedBox(width: _widthSpace),
          _SnackbarMessage(message: error),
        ],
      ),
    );
  }

  /// Predefined marging for all [SnackBar]s.
  static const _margin = EdgeInsets.all(8);

  /// Predefined behavior for all [SnackBar]s.
  static const _behavior = SnackBarBehavior.floating;

  /// Predefined elevation for all [SnackBar]s.
  static const _elevation = 20.0;

  /// Predefined space between the message and the
  /// [SvgPicture.asset] icon for all [SnackBar]s.
  static const _widthSpace = 16.0;
}
