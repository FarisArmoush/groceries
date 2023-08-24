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
              showModalBottomSheet<UploadImageBottomSheet>(
                context: context,
                elevation: 0,
                showDragHandle: true,
                builder: (context) => UploadImageBottomSheet(
                  onTakePhoto: () {},
                  onUploadPhoto: () {},
                ),
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
