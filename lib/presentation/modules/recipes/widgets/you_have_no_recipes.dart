import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class YouHaveNoRecipes extends StatelessWidget {
  const YouHaveNoRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.35,
          child: SvgPicture.asset(
            Assets.svg.illEating,
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text(
          AppTranslations.youHaveNoRecipes,
          style: AppTextStyles.poppinsSemiBold(
            color: Theme.of(context).primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          AppTranslations.startWithCreatingYourFirstRecipe,
          style: AppTextStyles.poppinsLight(
            color: Theme.of(context).hintColor,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        FilledButton(
          onPressed: () {},
          child: Text(AppTranslations.createFirstRecipe),
        ),
      ],
    );
  }
}
