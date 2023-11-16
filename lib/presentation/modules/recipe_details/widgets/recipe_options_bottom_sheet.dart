part of '../recipe_details.dart';

class RecipeOptionsBottomSheet extends StatelessWidget {
  const RecipeOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: AppPaddings.bottomSheetPadding(context),
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
