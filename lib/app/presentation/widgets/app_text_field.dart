import 'package:flutter/material.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.autofillHints,
    this.onEditingComplete,
    this.onTapOutside,
    this.onTap,
    this.labelText = 'Add a label',
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
  }) : super(key: key);

  final String? labelText;
  final String? errorText;
  final Iterable<String>? autofillHints;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final TapRegionCallback? onTapOutside;
  final GestureTapCallback? onTap;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Widget? suffix;
  final bool autoCorrect;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;
  final InputBorder? focusedErrorBorder;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      autofillHints: autofillHints,
      autocorrect: autoCorrect,
      onChanged: onChanged,
      onTap: onTap,
      keyboardType: keyboardType,
      onTapOutside: onTapOutside,
      cursorColor: Theme.of(context).primaryColorLight,
      cursorWidth: 1,
      onEditingComplete: onEditingComplete,
      style: AppTextStyles.poppinsRegular(
        color: Theme.of(context).primaryColor,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        suffix: suffix,
        prefix: prefix,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: AppTextStyles.poppinsRegular(
          color: Theme.of(context).hintColor,
          fontSize: 16,
        ),
        suffixIconColor: Theme.of(context).primaryColor,
        errorText: errorText,
        errorStyle: AppTextStyles.poppinsMedium(
          color: Theme.of(context).primaryColorLight,
          fontSize: 12,
        ),
        floatingLabelStyle: AppTextStyles.poppinsRegular(
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
        enabledBorder: enabledBorder,
        border: border,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        disabledBorder: disabledBorder,
        focusedErrorBorder: focusedBorder,
      ),
    );
  }
}
