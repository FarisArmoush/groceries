part of '../account_settings.dart';

class EditUserImageButton extends StatelessWidget {
  const EditUserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Assets.svg.icEdit.svg(
        color: context.theme.primaryColorLight,
      ),
      label: Text(
        AppTranslations.accountSettings.editUserImage,
      ),
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => UploadImageBottomSheet(
          onTakePhoto: () {},
          onUploadPhoto: () {},
        ),
      ),
    );
  }
}
