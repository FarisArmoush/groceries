part of '../update_email.dart';

class UpdateEmailBodyText extends StatelessWidget {
  const UpdateEmailBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Choose your new Email',
      style: TextStyle(
        fontFamily: AppFonts.regular(context),
        color: context.theme.primaryColor,
        fontSize: 22,
      ),
    );
  }
}
