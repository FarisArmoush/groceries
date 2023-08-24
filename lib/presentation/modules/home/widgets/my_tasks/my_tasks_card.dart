part of '../../home.dart';

class MyTasksCard extends StatelessWidget {
  const MyTasksCard({
    required this.taskModel,
    super.key,
  });

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.all(8),
      leading: CachedImage(
        imageUrl: taskModel.listModel.imageUrl,
        width: context.deviceWidth * 0.15,
        height: context.deviceHeight * 0.1,
      ),
      title: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              taskModel.listModel.name,
              style: context.theme.listTileTheme.titleTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Text(
              taskModel.dueDate.toString(),
              style: TextStyle(
                fontFamily: AppFonts.regular(context),
                color: context.theme.hintColor,
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
              '${taskModel.groceries.length} ${AppTranslations.home.newTasks}',
              style: context.theme.listTileTheme.subtitleTextStyle?.copyWith(
                color: context.theme.primaryColorLight,
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
