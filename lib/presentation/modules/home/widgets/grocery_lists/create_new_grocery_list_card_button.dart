import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class CreateNewGroceryListCardButton extends StatelessWidget {
  const CreateNewGroceryListCardButton({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).primaryColorLight,
      child: InkWell(
        onTap: () => context.pushNamed(AppNamedRoutes.createList),
        child: Container(
          width: size.width * 0.6,
          padding: const EdgeInsetsDirectional.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.svg.icPlusCircle.svg(
                height: size.height * 0.1,
                color: AppColors.white,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                text,
                style: AppTextStyles.medium(
                  context: context,
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
