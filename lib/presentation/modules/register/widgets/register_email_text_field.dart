import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RegisterEmailTextField extends StatelessWidget {
  const RegisterEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      buildWhen: (previous, current) {
        return previous.email != current.email;
      },
      builder: (context, state) {
        return AppTextField(
          keyboardType: TextInputType.emailAddress,
          labelText: AppTranslations.general.email,
          validator: (value) => state.email.validator(value),
          errorText: state.email.displayError,
          prefixIcon: Assets.svg.icMail.svg(
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              context.theme.inputDecorationTheme.prefixIconColor!,
              BlendMode.srcIn,
            ),
          ),
          onChanged: (value) => context.read<RegisterBloc>().add(
                RegisterEvent.updateEmail(value),
              ),
        );
      },
    );
  }
}
