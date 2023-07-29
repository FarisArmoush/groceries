import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class AddItemsTextField extends StatelessWidget {
  const AddItemsTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CupertinoColors.systemGrey5,
      borderRadius: BorderRadius.circular(9),
      child: AppTextField(
        style: TextStyle(
          fontFamily: AppFonts.semiBold(context),
          color: AppColors.black,
          fontSize: 14,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        labelStyle: TextStyle(
          fontFamily: AppFonts.medium(context),
          color: AppColors.black,
          fontSize: 14,
        ),
        floatingLabelStyle: TextStyle(
          fontFamily: AppFonts.medium(context),
          color: AppColors.black,
          fontSize: 16,
        ),
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: AppColors.black,
        ),
        labelText: "What're you looking for?",
        disabledBorder: InputBorder.none,
        border: InputBorder.none,
        errorBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
    );
  }
}
