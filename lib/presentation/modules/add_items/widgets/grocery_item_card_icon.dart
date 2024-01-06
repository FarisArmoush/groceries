part of '../add_items.dart';

class GroceryItemCardIcon extends StatelessWidget {
  const GroceryItemCardIcon({required this.groceryModel, super.key});

  final GroceryModel groceryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.theme.primaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: SvgPicture.asset(
        // TODO(FarisArmoush): Connect icon here.
        Assets.svg.icBeef.path,
        // ignore: deprecated_member_use
        color: context.theme.colorScheme.secondary,
        height: context.deviceHeight * 0.03,
      ),
    );
  }
}
