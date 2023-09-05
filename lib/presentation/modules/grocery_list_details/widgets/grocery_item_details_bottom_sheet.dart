part of '../grocery_list_details.dart';

class GroceryItemDetailsBottomSheet extends StatelessWidget {
  const GroceryItemDetailsBottomSheet({
    required this.groceryModel,
    super.key,
  });

  final GroceryModel groceryModel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 24,
      ),
      children: [
        if (groceryModel.imageUrl.isNotEmpty)
          CachedImageWithEditButton(
            imageUrl: groceryModel.imageUrl,
            onPressed: () {},
          )
        else
          const SizedBox.shrink(),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        _name(context),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        _category(context),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        _notes(context),
      ],
    );
  }

  Widget _notes(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: SvgPicture.asset(
            Assets.svg.icEdit.path,
            // ignore: deprecated_member_use
            color: AppColors.black,
          ),
        ),
        SizedBox(
          width: context.deviceWidth * 0.02,
        ),
        Flexible(
          child: Text(
            '${groceryModel.notes} ' * 1,
            style: TextStyle(
              fontFamily: AppFonts.light(context),
              color: context.theme.primaryColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget _name(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: SvgPicture.asset(
            Assets.svg.icBeef.path,
            // ignore: deprecated_member_use
            color: AppColors.black,
          ),
        ),
        SizedBox(
          width: context.deviceWidth * 0.02,
        ),
        Text(
          groceryModel.name,
          style: TextStyle(
            fontFamily: AppFonts.semiBold(context),
            color: context.theme.primaryColor,
            fontSize: 28,
          ),
        ),
      ],
    );
  }

  Widget _category(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: SvgPicture.asset(
            Assets.svg.icBeef.path,
            // ignore: deprecated_member_use
            color: AppColors.black,
          ),
        ),
        SizedBox(
          width: context.deviceWidth * 0.02,
        ),
        Text(
          groceryModel.category,
          style: TextStyle(
            fontFamily: AppFonts.medium(context),
            color: context.theme.primaryColor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
