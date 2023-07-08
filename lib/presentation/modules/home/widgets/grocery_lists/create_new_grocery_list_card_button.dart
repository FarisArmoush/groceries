import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class CreateNewGroceryListCardButton extends StatelessWidget {
  const CreateNewGroceryListCardButton({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: context.theme.primaryColorLight,
      child: InkWell(
        onTap: () => context.pushNamed(AppNamedRoutes.createList),
        child: Container(
          width: context.deviceWidth * 0.6,
          padding: const EdgeInsetsDirectional.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.svg.icPlusCircle.svg(
                height: context.deviceHeight * 0.1,
                color: AppColors.white,
              ),
              SizedBox(
                height: context.deviceHeight * 0.02,
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: AppFonts.medium(context),
                  color: AppColors.white,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
