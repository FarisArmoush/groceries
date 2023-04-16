import 'package:flutter/material.dart';
import 'package:groceries/app/data/models/notification_model.dart';
import 'package:groceries/app/presentation/modules/notifications/widgets/notification_card/notification_card.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({
    required this.list,
    Key? key,
  }) : super(key: key);
  final List<NotificationModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return NotificationCard(
          notificationsModel: NotificationModel(
            title: list[index].title,
            subtitle: list[index].subtitle,
            date: list[index].date,
            imageUrl: list[index].imageUrl,
          ),
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        );
      },
    );
  }
}
