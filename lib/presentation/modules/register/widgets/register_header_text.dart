part of '../register.dart';

class RegisterHeaderText extends StatelessWidget {
  const RegisterHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.register.registerHeader,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
