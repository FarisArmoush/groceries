import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/presentation/modules/grocery_list/widgets/grocery_list_options_button.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class GroceryListCard extends StatelessWidget {
  const GroceryListCard({
    required this.listModel,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final GroceryListModel listModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Theme.of(context).cardColor,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: size.width * 0.6,
          padding: const EdgeInsetsDirectional.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: AlignmentDirectional.topEnd,
                child: GroceryListOptionsButton(),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                listModel.name,
                style: AppTextStyles.medium(
                  context: context,
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
                    style: AppTextStyles.light(
                      context: context,
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
