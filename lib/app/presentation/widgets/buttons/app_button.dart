import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/constants/color_constants.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    required this.buttonStyle,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  /// The text that will appear on the button
  final String text;

  /// Use the `AppButtonStyles` class methods
  /// for easier access to pre-built styles
  final ButtonStyle buttonStyle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.053,
      child: FilledButton(
        style: buttonStyle,
        onPressed: onTap,
        child: Text(text),
      ),
    );
  }
}

class AppButtonStyles {
  static const _borderRadius = 28.0;

  static const _elevation = 10.0;

  static const _fontSize = 16.0;

  static ButtonStyle red(BuildContext context) {
    return ButtonStyle(
      shadowColor: MaterialStateProperty.all(
        Theme.of(context).shadowColor,
      ),
      elevation: MaterialStateProperty.all<double>(_elevation),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Theme.of(context).primaryColorLight,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        AppTextStyles.poppinsRegular(
          color: ColorConstants.white,
          fontSize: _fontSize,
        ),
      ),
    );
  }

  static ButtonStyle blackAndWhite(BuildContext context) {
    return ButtonStyle(
      shadowColor: MaterialStateProperty.all(
        Theme.of(context).shadowColor,
      ),
      elevation: MaterialStateProperty.all<double>(10),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Theme.of(context).primaryColor,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        AppTextStyles.poppinsRegular(
          color: Theme.of(context).colorScheme.secondary,
          fontSize: _fontSize,
        ),
      ),
    );
  }

  static ButtonStyle transparent(BuildContext context) {
    return ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
      ),
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          color: Theme.of(context).hintColor,
        ),
      ),
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.transparent,
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        AppTextStyles.poppinsRegular(
          color: Theme.of(context).hintColor,
          fontSize: _fontSize,
        ),
      ),
    );
  }
}
