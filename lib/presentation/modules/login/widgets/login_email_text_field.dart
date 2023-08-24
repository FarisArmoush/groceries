part of '../login.dart';

class LoginEmailTextField extends StatelessWidget {
  const LoginEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 1000.milliseconds,
      child: BlocBuilder<LoginCubit, LoginState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return AppTextField(
            prefixIcon: const Icon(CupertinoIcons.mail),
            onChanged: (email) =>
                context.read<LoginCubit>().emailChanged(email),
            keyboardType: TextInputType.emailAddress,
            labelText: AppTranslations.general.email,
            errorText: state.email.displayError,
            validator: (value) => state.email.validator(value),
          );
        },
      ),
    );
  }
}
