import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/data/models/task_model.dart';
import 'package:groceries/app/presentation/widgets/cached_image.dart';

class MyTasksCard extends StatelessWidget {
  const MyTasksCard({
    required this.taskModel,
    Key? key,
  }) : super(key: key);

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.all(8),
      leading: CachedImage(
        imageUrl: taskModel.listModel!.imageUrl,
        width: size.width * 0.15,
        height: size.height * 0.1,
        boxFit: BoxFit.cover,
      ),
      title: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              taskModel.listModel!.groupName,
              style: AppTextStyles.poppinsRegular(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Expanded(
            child: Text(
              taskModel.dueDate.toString(),
              style: AppTextStyles.poppinsRegular(
                color: Theme.of(context).hintColor,
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
      subtitle: taskModel.groceries!.isNotEmpty
          ? Text(
              'You have ${taskModel.groceries!.length} tasks',
              style: AppTextStyles.poppinsRegular(
                color: Theme.of(context).primaryColorLight,
                fontSize: 12,
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
