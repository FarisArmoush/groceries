import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/modules/forgot_password/widgets/cancel_forgot_password_dialog.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';
import 'package:groceries/app/presentation/widgets/buttons/app_button.dart';
import 'package:groceries/app/presentation/widgets/constant_widgets/app_snack_bars.dart';

// ignore: must_be_immutable
class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  final _forgotPasswordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final remoteConfigRepo =
        context.watch<RemoteConfigCubit>().remoteConfigRepo;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => showDialog<CancelForgotPasswordDialog>(
              context: context,
              builder: (context) => const CancelForgotPasswordDialog(),
            ),
          ),
        ),
        body: Form(
          key: _forgotPasswordKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.09,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: size.width * 0.07,
              ),
              Text(
                remoteConfigRepo.forgotPasswordTitle,
                style: AppTextStyles.poppinsSemiBold(
                  color: Theme.of(context).primaryColorLight,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                remoteConfigRepo.forgotPasswordBody,
                style: AppTextStyles.poppinsRegular(
                  color: Theme.of(context).hintColor,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              const AppTextField(
                labelText: 'Group Discription',
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              AppButton(
                text: 'Send',
                buttonStyle: AppButtonStyles.blackAndWhite(context),
                onTap: () => checkEmail(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkEmail(BuildContext context) async {
    if (_forgotPasswordKey.currentState!.validate()) {
    } else {
      AppSnackBars.failedSnackBar(context, 'Email is Invalid');
    }
  }
}
