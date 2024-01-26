part of '../account_settings.dart';

class EditUserImageButton extends StatelessWidget {
  const EditUserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Assets.svg.icEdit.svg(
        colorFilter: ColorFilter.mode(
          context.theme.primaryColorLight,
          BlendMode.srcIn,
        ),
      ),
      label: Text(
        AppTranslations.accountSettings.editUserImage,
      ),
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => UploadImageBottomSheet(
          onTakePhoto: () {
            context.read<UpdateUserImageBloc>().add(
                  const UpdateUserImageEvent.pickImage(
                    source: ImageSource.camera,
                  ),
                );
            context.pop();
          },
          onUploadPhoto: () {
            context.read<UpdateUserImageBloc>().add(
                  const UpdateUserImageEvent.pickImage(
                    source: ImageSource.gallery,
                  ),
                );
            context.pop();
          },
        ),
      ),
    );
  }
}
