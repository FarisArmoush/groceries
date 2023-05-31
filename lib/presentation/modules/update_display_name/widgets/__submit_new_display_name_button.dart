part of 'update_display_name_form.dart';

class _SubmitNewDisplayNameButton extends StatelessWidget {
  const _SubmitNewDisplayNameButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      child: SizedBox(
        width: context.deviceHeight,
        child: BlocBuilder<UpdateDisplayNameCubit, UpdateDisplayNameState>(
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
                  : () => context
                      .read<UpdateDisplayNameCubit>()
                      .updateDisplayName(),
              child: const Text('Submit'),
            );
          },
        ),
      ),
    );
  }
}
