part of 'widgets.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: CircularProgressIndicator(
        color: context.theme.primaryColorLight,
      ),
    ).centered();
  }
}
