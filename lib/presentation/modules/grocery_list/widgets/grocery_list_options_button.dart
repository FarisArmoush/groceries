import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/grocery_list/widgets/grocery_list_options_bottom_sheet.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class GroceryListOptionsButton extends StatelessWidget {
  const GroceryListOptionsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: AppTranslations.listOptions,
      icon: SvgPicture.asset(
        Assets.svg.icVerticalThreeDots,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () => showModalBottomSheet<GroceryListOptionsBottomSheet>(
        context: context,
        builder: (context) => const GroceryListOptionsBottomSheet(),
      ),
    );
  }
}
