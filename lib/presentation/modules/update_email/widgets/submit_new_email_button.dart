part of '../update_email.dart';

class SubmitNewEmailButton extends StatelessWidget {
  const SubmitNewEmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.deviceHeight,
      child: BlocBuilder<UpdateEmailBloc, UpdateEmailState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: !state.isValid
                ? null
                : () => context.read<UpdateEmailBloc>().add(
                      const UpdateEmailEvent.updateEmail(),
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
