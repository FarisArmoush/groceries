import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/modules/forgot_password/widgets/cancel_forgot_password_dialog.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

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
              ElevatedButton(
                onPressed: () => context.pushReplacementNamed(
                  AppNamedRoutes.verification,
                ),
                child: const Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
