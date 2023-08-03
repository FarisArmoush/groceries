part of '../grocery_list_settings.dart';

class EditListImage extends StatelessWidget {
  const EditListImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CachedImage(
          imageUrl:
              'https://www.searchenginejournal.com/wp-content/uploads/2022/06/image-search-1600-x-840-px-62c6dc4ff1eee-sej.png',
          height: 200,
          width: double.infinity,
          boxShape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        CircleAvatar(
          backgroundColor: AppColors.black.withOpacity(0.7),
          child: IconButton(
            onPressed: () {
              showModalBottomSheet<EditListImageBottomSheet>(
                context: context,
                elevation: 0,
                showDragHandle: true,
                builder: (context) => const EditListImageBottomSheet(),
              );
            },
            icon: Assets.svg.icEdit.svg(
              color: AppColors.white,
            ),
          ),
        ).allPadding(8),
      ],
    );
  }
}

class EditListImageBottomSheet extends StatelessWidget {
  const EditListImageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        BottomSheetButton(
          text: AppTranslations.takePhoto,
          iconPath: Assets.svg.icCamera.path,
          onTap: () {},
        ),
        BottomSheetButton(
          text: AppTranslations.uploadPhotoFromGallery,
          iconPath: Assets.svg.icImage.path,
          onTap: () {},
        ),
      ],
    );
  }
}
