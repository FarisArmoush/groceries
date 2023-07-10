part of 'update_email_form.dart';

class _SubmitNewEmailButton extends StatelessWidget {
  const _SubmitNewEmailButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      child: SizedBox(
        width: context.deviceHeight,
        child: BlocBuilder<UpdateEmailCubit, UpdateEmailState>(
          builder: (context, state) {
            if (state.status.isInProgress) {
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
              onPressed: !state.isValid
                  ? null
                  : () => context.read<UpdateEmailCubit>().updateEmail(),
              child: const Text('Submit'),
            );
          },
        ),
      ),
    );
  }
}
