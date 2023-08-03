part of '../grocery_list_details.dart';

class EmptyGroceryList extends StatelessWidget {
  const EmptyGroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Assets.svg.illWriting.svg(
          height: context.deviceHeight * 0.35,
        ),
        SizedBox(
          height: context.deviceHeight * 0.015,
        ),
        Text(
          AppTranslations.emptyListHeader,
          style: TextStyle(
            fontFamily: AppFonts.semiBold(context),
            color: context.theme.primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.01,
        ),
        Text(
          AppTranslations.emptyListBody,
          style: TextStyle(
            fontFamily: AppFonts.light(context),
            color: context.theme.hintColor,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        ElevatedButton.icon(
          onPressed: () => context.pushNamed(AppNamedRoutes.addItems),
          label: Text(AppTranslations.browseGroceries),
          icon: Assets.svg.icSearch.svg(
            color: context.theme.colorScheme.secondary,
          ),
        ),
      ],
    ).centered().allPadding(16);
  }
}
