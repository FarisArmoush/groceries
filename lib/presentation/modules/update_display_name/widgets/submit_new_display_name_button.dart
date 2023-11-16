part of '../update_display_name.dart';

class SubmitNewDisplayNameButton extends StatelessWidget {
  const SubmitNewDisplayNameButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceHeight,
      child: BlocBuilder<UpdateDisplayNameBloc, UpdateDisplayNameState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: !state.isValid
                ? null
                : () => context.read<UpdateDisplayNameBloc>().add(
                      const UpdateDisplayNameEvent.updateDisplayName(),
                    ),
            child: Text(AppTranslations.general.submit),
          );
        },
      ),
    ).symmetricPadding(
      vertical: 12,
      horizontal: 24,
    );
  }
}
