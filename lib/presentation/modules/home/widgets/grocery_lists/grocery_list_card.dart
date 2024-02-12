import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class GroceryListCard extends StatelessWidget {
  const GroceryListCard({
    required this.listModel,
    required this.onTap,
    super.key,
  });
  final GroceryListModel listModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      borderRadius: BorderRadius.circular(12),
      color: context.theme.cardColor,
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: onTap,
        child: Container(
          padding: const EdgeInsetsDirectional.only(
            start: 16,
            end: 12,
            top: 20,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              _icon(context),
              SizedBox(
                height: context.deviceHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _listName(context),
                  SizedBox(
                    height: context.deviceHeight * 0.01,
                  ),
                  _newTasksBox(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Icon _icon(BuildContext context) {
    return Icon(
      Icons.home,
      size: context.deviceHeight * 0.045,
    );
  }

  Widget _newTasksBox(BuildContext context) {
    return Visibility(
      visible: listModel.items?.isNotEmpty ?? false,
      child: Container(
        padding: const EdgeInsetsDirectional.all(8),
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          '${listModel.items?.length ?? 0} ${AppTranslations.home.newTasks}',
          style: TextStyle(
            fontFamily: AppFonts.light(context),
            color: context.theme.colorScheme.secondary,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Text _listName(BuildContext context) {
    return Text(
      listModel.name ?? '',
      style: TextStyle(
        fontFamily: AppFonts.medium(context),
        color: context.theme.primaryColor,
        fontSize: 20,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
