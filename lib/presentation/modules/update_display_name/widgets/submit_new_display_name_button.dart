part of '../update_display_name.dart';

class SubmitNewDisplayNameButton extends StatelessWidget {
  const SubmitNewDisplayNameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceHeight,
      child: BlocBuilder<UpdateDisplayNameCubit, UpdateDisplayNameState>(
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
                : () =>
                    context.read<UpdateDisplayNameCubit>().updateDisplayName(),
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
