part of '../account_settings.dart';

class RequestToDeleteAccountButton extends StatelessWidget {
  const RequestToDeleteAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () async {
        unawaited(
          showDialog<AppLoadingIndicator>(
            context: context,
            builder: (context) => const AppLoadingIndicator(),
          ),
        );
        await Future.delayed(
          500.milliseconds,
          () {
            context
              ..pop()
              ..pushNamed(AppNamedRoutes.deleteAccount);
          },
        );
      },
      child: Text(AppTranslations.deleteAccount),
    );
  }
}
