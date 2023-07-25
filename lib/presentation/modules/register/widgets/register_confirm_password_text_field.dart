import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class RegisterConfirmPasswordTextField extends StatelessWidget {
  const RegisterConfirmPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 700.milliseconds,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) {
          return previous.password != current.password ||
              previous.confirmedPassword != current.confirmedPassword;
        },
        builder: (context, state) {
          return AppTextField(
            prefixIcon: const Icon(CupertinoIcons.repeat),
            onChanged: (confirmPassword) {
              context
                  .read<RegisterCubit>()
                  .confirmedPasswordChanged(confirmPassword);
            },
            obscureText: true,
            labelText: AppTranslations.repeatPassword,
            validator: (value) => state.confirmedPassword.validator(value),
            errorText: state.confirmedPassword.displayError,
          );
        },
      ),
    );
  }
}
