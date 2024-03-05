import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries_theme/app_theme.dart';

abstract final class AppSnackBars {
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
          Assets.icons.checkCircle.svg(
            colorFilter: const ColorFilter.mode(
              AppColors.white,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 16),
          _SnackbarMessage(message: message),
        ],
      ),
    );
  }

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
          Assets.icons.info.svg(
            colorFilter: const ColorFilter.mode(
              AppColors.white,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 16),
          _SnackbarMessage(message: message),
        ],
      ),
    );
  }

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
          Assets.icons.alertTriangle.svg(
            colorFilter: const ColorFilter.mode(
              AppColors.white,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 16),
          _SnackbarMessage(message: warning),
        ],
      ),
    );
  }

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
          Assets.icons.circleX.svg(
            colorFilter: const ColorFilter.mode(
              AppColors.white,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: _widthSpace),
          _SnackbarMessage(message: error),
        ],
      ),
    );
  }

  static const _margin = EdgeInsetsDirectional.all(8);
  static const _behavior = SnackBarBehavior.floating;
  static const _elevation = 20.0;
  static const _widthSpace = 16.0;
}

class _SnackbarMessage extends StatelessWidget {
  const _SnackbarMessage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        message,
        style: const TextStyle(
          fontWeight: AppFontWeights.regular,
          color: AppColors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
