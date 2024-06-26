import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/task/task_entity.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries_theme/app_theme.dart';

class MyTasksCard extends StatelessWidget {
  const MyTasksCard({
    required this.taskModel,
    super.key,
  });

  final TaskEntity? taskModel;

  @override
  Widget build(BuildContext context) {
    final length = '${taskModel?.groceries?.length ?? 0}';
    return Material(
      color: context.theme.cardColor,
      borderRadius: BorderRadiusDirectional.circular(8),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedImage(
              imageUrl: taskModel?.listModel?.imageUrl ?? '',
              width: context.deviceWidth * 0.15,
              height: context.deviceHeight * 0.1,
              progressIndicatorBuilder: (context, url, progress) {
                return const SizedBox.shrink();
              },
            ),
            SizedBox(width: context.deviceWidth * 0.03),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                      taskModel?.listModel?.name ?? '',
                      style: context.theme.listTileTheme.titleTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Visibility(
                    visible: taskModel?.groceries?.isNotEmpty ?? false,
                    child: Text(
                      '$length ${Translations.home.newTasks}',
                      style: context.theme.listTileTheme.subtitleTextStyle
                          ?.copyWith(
                        color: context.theme.primaryColorLight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 4,
              child: Text(
                taskModel?.dueDate ?? '',
                style: TextStyle(
                  fontWeight: AppFontWeights.regular,
                  color: context.theme.hintColor,
                  fontSize: 12,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ).symmetricPadding(
          vertical: 4,
          horizontal: 12,
        ),
      ),
    );
  }
}
