part of '../register.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftFadeInAnimation(
      duration: 600.milliseconds,
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          if (state.status.isInProgress) {
            return IgnorePointer(
              child: FilledButton.icon(
                onPressed: () {},
                icon: const ButtonsLoadingIndicator(),
                label: _text(),
              ),
            );
          }
          return FilledButton(
            onPressed: state.isValid
                ? () => context.read<RegisterCubit>().register()
                : null,
            child: _text(),
          );
        },
      ),
    );
  }

  Widget _text() => FadeInAnimation(
        child: Text(AppTranslations.register.register),
      );
}
