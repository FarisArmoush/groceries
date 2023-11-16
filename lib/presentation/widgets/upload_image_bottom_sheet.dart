part of 'widgets.dart';

class UploadImageBottomSheet extends StatelessWidget {
  const UploadImageBottomSheet({
    required this.onTakePhoto,
    required this.onUploadPhoto,
    super.key,
  });

  final VoidCallback onTakePhoto;
  final VoidCallback onUploadPhoto;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: AppPaddings.bottomSheetPadding(context),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        BottomSheetButton(
          text: AppTranslations.general.takePhoto,
          iconPath: Assets.svg.icCamera.path,
          onTap: onTakePhoto,
        ),
        BottomSheetButton(
          text: AppTranslations.general.uploadPhotoFromGallery,
          iconPath: Assets.svg.icImage.path,
          onTap: onUploadPhoto,
        ),
      ],
    );
  }
}
