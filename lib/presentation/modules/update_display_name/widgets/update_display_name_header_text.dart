part of '../update_display_name.dart';

class UpdateDisplayNameHeaderText extends StatelessWidget {
  const UpdateDisplayNameHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Change username',
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColorLight,
        fontSize: 32,
      ),
    );
  }
}
