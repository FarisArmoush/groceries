part of '../forgot_password.dart';

class ForgotPasswordEmailTextField extends StatelessWidget {
  const ForgotPasswordEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          onChanged: (value) => context.read<ForgotPasswordBloc>().add(
                ForgotPasswordEvent.emailChanged(value),
              ),
          labelText: AppTranslations.general.email,
          keyboardType: TextInputType.emailAddress,
          validator: (value) => state.email.validator(value),
          errorText: state.email.displayError,
          prefixIcon: Assets.svg.icMail.svg(
            color: context.theme.inputDecorationTheme.prefixIconColor,
            fit: BoxFit.scaleDown,
          ),
        );
      },
    );
  }
}
