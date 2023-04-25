part of 'register_form.dart';

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status.isSubmissionInProgress) {
          return const AppLoadingIndicator();
        }
        return FilledButton(
          onPressed: () => state.status.isValidated
              ? context.read<RegisterCubit>().register()
              : null,
          child: const Text('Sign Up'),
        );
      },
    );
  }
}
