import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/task_model.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/app_fonts.dart';

class MyTasksCard extends StatelessWidget {
  const MyTasksCard({
    required this.taskModel,
    super.key,
  });

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.all(8),
      leading: CachedImage(
        imageUrl: taskModel.listModel.imageUrl,
        width: size.width * 0.15,
        height: size.height * 0.1,
        boxFit: BoxFit.cover,
      ),
      title: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              taskModel.listModel.name,
              style: Theme.of(context).listTileTheme.titleTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Text(
              taskModel.dueDate.toString(),
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
                color: Theme.of(context).hintColor,
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
      subtitle: taskModel.groceries.isNotEmpty
          ? Text(
              '${taskModel.groceries.length} ${AppTranslations.newTasks}',
              style:
                  Theme.of(context).listTileTheme.subtitleTextStyle?.copyWith(
                        color: Theme.of(context).primaryColorLight,
                      ),
            )
          : const SizedBox.shrink(),
    );
  }
}
