part of 'update_password_form.dart';

class _SubmitNewPasswordButton extends StatelessWidget {
  const _SubmitNewPasswordButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      child: SizedBox(
        width: context.deviceHeight,
        child: BlocBuilder<UpdatePasswordCubit, UpdatePasswordState>(
          buildWhen: (previous, current) => previous.status != current.status,
          builder: (context, state) {
            if (state.status.isSubmissionInProgress) {
              // An untapable button with a loading indicator.
              return IgnorePointer(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const ButtonsLoadingIndicator(),
                  label: const Text('Submit'),
                ),
              );
            }
            return ElevatedButton(
              onPressed: state.status.isValidated
                  ? null
                  : () => context.read<UpdatePasswordCubit>().updateEmail(),
              child: const Text('Submit'),
            );
          },
        ),
      ),
    );
  }
}
