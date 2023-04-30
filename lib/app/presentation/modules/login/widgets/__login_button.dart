part of 'login_form.dart';

class _LoginButton extends StatelessWidget {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status.isSubmissionInProgress) {
          return const AppLoadingIndicator();
        }
        if (!state.status.isValidated) {
          // Returns a disabled button
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
