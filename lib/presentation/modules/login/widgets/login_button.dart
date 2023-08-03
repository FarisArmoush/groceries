part of '../login.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 700.milliseconds,
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            // An untapable button with a loading indicator.
            return IgnorePointer(
              child: FilledButton.icon(
                onPressed: () {},
                icon: const ButtonsLoadingIndicator(),
                label: _text(),
              ),
            );
          }
          return FilledButton(
            onPressed:
                state.isValid ? () => context.read<LoginCubit>().login() : null,
            child: _text(),
          );
        },
      ),
    );
  }

  Widget _text() {
    return FadeInAnimation(
      duration: 200.milliseconds,
      child: Text(AppTranslations.login),
    );
  }
}
