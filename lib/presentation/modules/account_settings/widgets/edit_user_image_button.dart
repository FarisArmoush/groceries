part of '../account_settings.dart';

class EditUserImageButton extends StatelessWidget {
  const EditUserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => showModalBottomSheet<EditUserImageBottomSheet>(
        context: context,
        showDragHandle: true,
        elevation: 0,
        builder: (context) => const EditUserImageBottomSheet(),
      ),
      icon: Assets.svg.icEdit.svg(
        color: context.theme.primaryColorLight,
      ),
      label: Text(AppTranslations.editUserImage),
    );
  }
}

class EditUserImageBottomSheet extends StatelessWidget {
  const EditUserImageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: [
        BottomSheetButton(
          text: 'Take a photo',
          iconPath: Assets.svg.icCamera.path,
          onTap: () {},
        ),
        BottomSheetButton(
          text: 'Pick a photo',
          iconPath: Assets.svg.icImage.path,
          onTap: () {},
        ),
      ],
    );
  }
}
