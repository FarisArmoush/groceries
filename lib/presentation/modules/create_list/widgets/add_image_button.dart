part of '../create_list.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Assets.svg.icCamera.svg(
        color: context.theme.primaryColor,
      ),
      label: Text(
        AppTranslations.addListImage,
        style: TextStyle(
          fontFamily: AppFonts.medium(context),
          color: context.theme.primaryColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
