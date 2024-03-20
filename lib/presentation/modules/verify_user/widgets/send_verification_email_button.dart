import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/verify_user/bloc/verify_user_bloc.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class SendVerificationEmailButton extends StatelessWidget {
  const SendVerificationEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.read<VerifyUserBloc>()
        ..add(
          const VerifyUserEvent.submit(),
        ),
      icon: Assets.icons.send.svg(
        colorFilter: ColorFilter.mode(
          context.theme.colorScheme.secondary,
          BlendMode.srcIn,
        ),
      ),
      label: Text(AppTranslations.forgotPassword.sendResetPassword),
    );
  }
}
