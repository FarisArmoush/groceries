import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/widgets/buttons/other_options_text_button.dart';
import 'package:groceries/gen/assets.gen.dart';

class ForgotPasswordVerificationView extends StatelessWidget {
  ForgotPasswordVerificationView({Key? key}) : super(key: key);

  final GlobalKey _otpKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final remoteConfigRepo =
        context.watch<RemoteConfigCubit>().remoteConfigRepo;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(),
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _otpKey,
          child: ListView(
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
                remoteConfigRepo.emailVerificationTitle,
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
                remoteConfigRepo.emailVerificationBody,
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
                upperText: "Didn'nt recieve an OTP?",
                lowerText: 'Resend Code',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
