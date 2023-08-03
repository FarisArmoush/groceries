part of '../additional_resources.dart';

class AdditionalResourcesTitle extends StatelessWidget {
  const AdditionalResourcesTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: AppFonts.medium(context),
          color: context.theme.primaryColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
