import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/date_time_parser_extension.dart';
import 'package:groceries_app_ui/app_theme.dart';

class MyTasksCard extends StatelessWidget {
  const MyTasksCard({
    required this.taskModel,
    super.key,
  });

  final TaskModel? taskModel;

  @override
  Widget build(BuildContext context) {
    final length = '${taskModel?.groceries?.length ?? 0}';
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsetsDirectional.all(8),
      leading: CachedImage(
        imageUrl: taskModel?.listModel?.imageUrl ?? '',
        width: context.deviceWidth * 0.15,
        height: context.deviceHeight * 0.1,
      ),
      title: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              taskModel?.listModel?.name ?? '',
              style: context.theme.listTileTheme.titleTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              taskModel?.dueDate.toString().toDDMMYYYY() ?? '',
              style: TextStyle(
                fontWeight: AppFontWeights.regular,
                color: context.theme.hintColor,
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
      subtitle: taskModel?.groceries?.isNotEmpty ?? false
          ? Text(
              '$length ${AppTranslations.home.newTasks}',
              style: context.theme.listTileTheme.subtitleTextStyle?.copyWith(
                color: context.theme.primaryColorLight,
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
