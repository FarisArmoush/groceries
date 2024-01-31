import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

/// {@template app_text_field}
/// A custom text field widget for the application.
///
/// The reason this widget exists is because in the [InputDecorationTheme]
/// there is not a way to modify the [TextStyle] of the input text.
/// {@endtemplate}
class AppTextField extends StatelessWidget {
  /// {@macro app_text_field}
  const AppTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.autofillHints,
    this.onEditingComplete,
    this.onTapOutside,
    this.onTap,
    this.labelText,
    this.errorText,
    this.autoCorrect = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.enabledBorder,
    this.border,
    this.focusedBorder,
    this.errorBorder,
    this.disabledBorder,
    this.focusedErrorBorder,
    this.prefixIcon,
    this.prefix,
    this.suffix,
    this.validator,
    this.autovalidateMode,
    this.labelStyle,
    this.contentPadding,
    this.floatingLabelStyle,
    this.style,
    this.initialValue,
    this.textCapitalization = TextCapitalization.none,
  });

  /// The text displayed as the label of the text field.
  final String? labelText;

  /// The error message displayed below the text field.
  final String? errorText;

  /// The autofill hints for the text field.
  final Iterable<String>? autofillHints;

  /// The controller for the text field.
  final TextEditingController? controller;

  /// A callback function called when the text in the field changes.
  final ValueChanged<String>? onChanged;

  /// A callback function called when editing is completed.
  final VoidCallback? onEditingComplete;

  /// A callback function called when tapping outside the text field.
  final TapRegionCallback? onTapOutside;

  /// A callback function called when the text field is tapped.
  final GestureTapCallback? onTap;

  /// Determines whether the text in the field should be obscured.
  final bool obscureText;

  /// The type of keyboard to use for input.
  final TextInputType? keyboardType;

  /// The icon widget to be displayed as a suffix.
  final Widget? suffixIcon;

  /// The icon widget to be displayed as a prefix.
  final Widget? prefixIcon;

  /// The widget to be displayed as a prefix.
  final Widget? prefix;

  /// The widget to be displayed as a suffix.
  final Widget? suffix;

  /// Determines whether auto-correction should be enabled.
  final bool autoCorrect;

  /// The border to display when the field is enabled.
  final InputBorder? enabledBorder;

  /// The border to display when the field is not focused.
  final InputBorder? border;

  /// The border to display when the field is focused.
  final InputBorder? focusedBorder;

  /// The border to display when the field has an error.
  final InputBorder? errorBorder;

  /// The border to display when the field is disabled.
  final InputBorder? disabledBorder;

  /// The border to display when the field is focused and has an error.
  final InputBorder? focusedErrorBorder;

  /// A function that validates the input value.
  final FormFieldValidator<String>? validator;

  /// Specifies validation mode.
  final AutovalidateMode? autovalidateMode;

  final TextStyle? labelStyle;
  final TextStyle? style;

  final TextStyle? floatingLabelStyle;

  final EdgeInsetsGeometry? contentPadding;

  final String? initialValue;

  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      textCapitalization: textCapitalization,
      validator: validator,
      initialValue: initialValue,
      controller: controller,
      obscureText: obscureText,
      autofillHints: autofillHints,
      autocorrect: autoCorrect,
      onChanged: onChanged,
      onTap: onTap,
      keyboardType: keyboardType,
      onTapOutside: onTapOutside ?? (_) => FocusScope.of(context).unfocus(),
      cursorColor: context.theme.primaryColorLight,
      cursorWidth: 1,
      onEditingComplete: onEditingComplete,
      style: style ??
          TextStyle(
            fontFamily: AppFonts.regular(context),
            color: context.theme.primaryColor,
            fontSize: 14,
          ),
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        suffixIconColor: context.theme.primaryColor,
        suffix: suffix,
        prefix: prefix,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        errorText: errorText,
        enabledBorder: enabledBorder,
        border: border,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        disabledBorder: disabledBorder,
        focusedErrorBorder: focusedBorder,
        labelStyle: labelStyle ??
            TextStyle(
              fontFamily: AppFonts.regular(context),
              color: context.theme.hintColor,
              fontSize: 16,
            ),
        floatingLabelStyle: floatingLabelStyle ??
            TextStyle(
              fontFamily: AppFonts.regular(context),
              color: context.theme.primaryColor,
              fontSize: 16,
            ),
      ),
    );
  }
}
