import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

class RegisterEmailTextField extends StatelessWidget {
  const RegisterEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 900.milliseconds,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        buildWhen: (previous, current) {
          return previous.email != current.email;
        },
        builder: (context, state) {
          return AppTextField(
            onChanged: (email) {
              context.read<RegisterCubit>().emailChanged(email);
            },
            prefixIcon: const Icon(CupertinoIcons.mail),
            keyboardType: TextInputType.emailAddress,
            labelText: AppTranslations.email,
            validator: (value) => state.email.validator(value),
            errorText: state.email.displayError,
          );
        },
      ),
    );
  }
}
