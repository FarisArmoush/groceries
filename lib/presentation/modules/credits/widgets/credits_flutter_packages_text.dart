part of '../credits.dart';

class CreditsFlutterPackagesText extends StatelessWidget {
  const CreditsFlutterPackagesText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Packages provided by the awesome people of the Flutter Community.',
      style: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: context.theme.primaryColor,
        fontSize: 12,
      ),
    );
  }
}
