part of 'login_form.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status.isSubmissionInProgress) {
          // An untapable button with a loading indicator.
          return IgnorePointer(
            child: FilledButton.icon(
              onPressed: () {},
              icon: const ButtonsLoadingIndicator(),
              label: Text(AppTranslations.login),
            ),
          );
        }
        if (!state.status.isValidated) {
          // A disabled button.
          return FilledButton(
            onPressed: null,
            style: DisabledButtonStyle(),
            child: Text(AppTranslations.login),
          );
        }
        return FilledButton(
          onPressed: () => context.read<LoginCubit>().login(),
          child: Text(AppTranslations.login),
        );
      },
    );
  }
}