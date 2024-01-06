part of '../grocery_list_settings.dart';

class EditListImage extends StatelessWidget {
  const EditListImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CachedImage(
          height: 200,
          width: double.infinity,
          boxShape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        CircleAvatar(
          backgroundColor: AppColors.black.withOpacity(0.7),
          child: IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
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
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ).allPadding(8),
      ],
    );
  }
}
