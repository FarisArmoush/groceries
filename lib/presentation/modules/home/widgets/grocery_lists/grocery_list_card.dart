import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_options_button.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

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
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).cardColor,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: context.deviceWidth * 0.6,
          padding: const EdgeInsetsDirectional.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: AlignmentDirectional.topEnd,
                child: GroceryListOptionsButton(),
              ),
              Icon(
                CupertinoIcons.home,
                size: context.deviceHeight * 0.06,
              ),
              Text(
                listModel.name,
                style: TextStyle(
                  fontFamily: AppFonts.medium(context),
                  color: Theme.of(context).primaryColor,
                  fontSize: 24,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (listModel.tasksAmount != 0)
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '${listModel.tasksAmount} ${AppTranslations.newTasks}',
                    style: TextStyle(
                      fontFamily: AppFonts.light(context),
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 14,
                    ),
                  ),
                )
              else
                const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
