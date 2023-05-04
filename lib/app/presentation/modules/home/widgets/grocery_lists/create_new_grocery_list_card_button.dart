import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/routes/app_named_routes.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';
import 'package:groceries/app/utils/constants/color_constants.dart';
import 'package:groceries/gen/assets.gen.dart';

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
              SvgPicture.asset(
                Assets.svg.icPlusCircle,
                height: size.height * 0.1,
                color: ColorConstants.white,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                text,
                style: AppTextStyles.poppinsMedium(
                  color: ColorConstants.white,
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
