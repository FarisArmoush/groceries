part of '../recipe_details.dart';

class RecipeOptionsBottomSheet extends StatelessWidget {
  const RecipeOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      children: [
        BottomSheetButton(
          onTap: () {},
          text: 'Edit',
          iconPath: Assets.svg.icEdit.path,
        ),
        BottomSheetButton(
          onTap: () {},
          text: 'Share',
          iconPath: Assets.svg.icShare.path,
        ),
        BottomSheetButton(
          onTap: () {},
          text: 'Delete',
          iconPath: Assets.svg.icTrash.path,
          color: context.theme.primaryColorLight,
        ),
      ],
    );
  }
}
