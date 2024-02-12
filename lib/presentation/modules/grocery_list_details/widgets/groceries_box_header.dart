import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceriesBoxHeader extends StatelessWidget {
  const GroceriesBoxHeader({
    required this.category,
    required this.assetPath,
    super.key,
  });

  final String category;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth,
      padding: const EdgeInsetsDirectional.all(16),
      decoration: const BoxDecoration(
        color: AppColors.black,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsetsDirectional.all(8),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: SvgPicture.asset(
              assetPath,
              colorFilter: const ColorFilter.mode(
                AppColors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(
            width: context.deviceWidth * 0.035,
          ),
          Text(
            category,
            style: TextStyle(
              fontFamily: AppFonts.semiBold(context),
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
