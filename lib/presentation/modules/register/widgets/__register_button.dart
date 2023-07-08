part of 'register_form.dart';

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        if (state.status.isInProgress) {
          return IgnorePointer(
            child: FilledButton.icon(
              onPressed: () {},
              icon: const ButtonsLoadingIndicator(),
              label: Text(AppTranslations.register),
            ),
          );
        }
        return FilledButton(
          onPressed: state.isValid
              ? () => context.read<RegisterCubit>().register()
              : null,
          child: Text(
            AppTranslations.register,
          ),
        );
      },
    );
  }
}
