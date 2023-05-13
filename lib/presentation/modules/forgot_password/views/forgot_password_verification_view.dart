import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/buttons/other_options_text_button.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class ForgotPasswordVerificationView extends StatelessWidget {
  const ForgotPasswordVerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.09,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: size.width * 0.07,
            ),
            SvgPicture.asset(
              Assets.svg.icVerified,
              height: MediaQuery.of(context).size.height * 0.15,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: size.width * 0.07,
            ),
            Text(
              AppTranslations.verifyYourAccount,
              style: AppTextStyles.poppinsSemiBold(
                color: Theme.of(context).primaryColorLight,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.width * 0.035,
            ),
            Text(
              AppTranslations.verificationBody,
              style: AppTextStyles.poppinsRegular(
                color: Theme.of(context).hintColor,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.width * 0.2,
            ),
            OtherOptionTextButton(
              upperText: AppTranslations.didntRecieveAnOTP,
              lowerText: AppTranslations.resendCode,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
