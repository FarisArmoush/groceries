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
        return FilledButton(
          onPressed: () => state.status.isValidated
              ? context.read<LoginCubit>().login()
              : null,
          child: const Text('Login'),
        );
      },
    );
  }
}
