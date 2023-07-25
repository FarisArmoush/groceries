import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/verify_user/cubit/verify_user_cubit.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class SendVerificationEmailButton extends StatelessWidget {
  const SendVerificationEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => context.read<VerifyUserCubit>().sendVerificationEmail(),
      icon: Assets.svg.icSend.svg(
        color: context.theme.colorScheme.secondary,
      ),
      label: const Text('Send'),
    );
  }
}
