part of '../create_recipe.dart';

class CreateRecipeImage extends StatelessWidget {
  const CreateRecipeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedImageWithEditButton(
      imageUrl: mockImage,
      onPressed: () => showModalBottomSheet<void>(
        context: context,
        elevation: 0,
        showDragHandle: true,
        builder: (context) => UploadImageBottomSheet(
          onTakePhoto: () {},
          onUploadPhoto: () {},
        ),
      ),
    );
  }
}
