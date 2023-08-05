part of '../update_email.dart';

class SubmitNewEmailButton extends StatelessWidget {
  const SubmitNewEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    ).symmetricPadding(
      vertical: 12,
      horizontal: 24,
    );
  }
}
