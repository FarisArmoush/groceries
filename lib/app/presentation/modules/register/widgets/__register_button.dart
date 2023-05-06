part of 'register_form.dart';

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status.isSubmissionInProgress) {
          return IgnorePointer(
            child: FilledButton.icon(
              onPressed: () {},
              icon: const ButtonsLoadingIndicator(),
              label: Text(AppTranslations.register),
            ),
          );
        }
        if (!state.status.isValidated) {
          // Returns a disabled button
          return FilledButton(
            onPressed: null,
            style: DisabledButtonStyle(),
            child: Text(AppTranslations.register),
          );
        }
        return FilledButton(
          onPressed: () => context.read<RegisterCubit>().register(),
          child: Text(
            AppTranslations.register,
          ),
        );
      },
    );
  }
}
