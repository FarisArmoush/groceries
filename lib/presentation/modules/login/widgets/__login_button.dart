part of 'login_form.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state.status.isInProgress) {
          // An untapable button with a loading indicator.
          return IgnorePointer(
            child: FilledButton.icon(
              onPressed: () {},
              icon: const ButtonsLoadingIndicator(),
              label: Text(AppTranslations.login),
            ),
          );
        }
        return FilledButton(
          onPressed:
              state.isValid ? () => context.read<LoginCubit>().login() : null,
          child: Text(AppTranslations.login),
        );
      },
    );
  }
}
