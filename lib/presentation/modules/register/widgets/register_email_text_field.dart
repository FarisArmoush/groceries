part of '../register.dart';

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
