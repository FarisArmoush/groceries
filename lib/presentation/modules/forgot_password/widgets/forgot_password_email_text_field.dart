import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class ForgotPasswordEmailTextField extends StatelessWidget {
  const ForgotPasswordEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      child: BlocBuilder<ForgotPasswordCubit, ForgotPasswordState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return AppTextField(
            onChanged: (value) =>
                context.read<ForgotPasswordCubit>().emailChanged(value),
            labelText: AppTranslations.email,
            keyboardType: TextInputType.emailAddress,
            validator: (value) => state.email.validator(value),
            errorText: state.email.displayError,
            prefixIcon: const Icon(CupertinoIcons.mail),
          );
        },
      ),
    );
  }
}
