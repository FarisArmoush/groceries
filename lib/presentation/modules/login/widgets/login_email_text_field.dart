import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class LoginEmailTextField extends StatelessWidget {
  const LoginEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.status.isInProgressOrSuccess,
          child: AppTextField(
            focusNode: state.emailNode,
            prefixIcon: Assets.icons.mail.svg(
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                context.theme.inputDecorationTheme.prefixIconColor!,
                BlendMode.srcIn,
              ),
            ),
            onChanged: (email) =>
                context.read<LoginBloc>().add(LoginEvent.updateEmail(email)),
            keyboardType: TextInputType.emailAddress,
            labelText: Translations.general.email,
            errorText: state.email.displayError,
            validator: (value) => state.email.validator(value),
          ),
        );
      },
    );
  }
}
