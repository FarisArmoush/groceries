part of '../home.dart';

class AppTipText extends StatelessWidget {
  const AppTipText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.homeTip,
      style: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: context.theme.hintColor,
        fontSize: 14,
      ),
    );
  }
}
