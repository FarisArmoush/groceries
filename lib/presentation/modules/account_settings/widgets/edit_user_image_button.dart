part of '../account_settings.dart';

class EditUserImageButton extends StatelessWidget {
  const EditUserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => showModalBottomSheet<UploadImageBottomSheet>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => UploadImageBottomSheet(
          onTakePhoto: () {},
          onUploadPhoto: () {},
        ),
      ),
      icon: Assets.svg.icEdit.svg(
        color: context.theme.primaryColorLight,
      ),
      label: Text(AppTranslations.accountSettings.editUserImage),
    );
  }
}
