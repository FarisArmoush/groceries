import 'package:flutter/material.dart';
import 'package:groceries/data/models/notification_model.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

part '__notification_card_date.dart';
part '__notification_card_title.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    required this.onTap,
    required this.notificationsModel,
    super.key,
  });

  final NotificationModel notificationsModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: context.deviceHeight * 0.0125,
        horizontal: context.deviceWidth * 0.04,
      ),
      onTap: onTap,
      leading: CachedImage(
        imageUrl: notificationsModel.imageUrl,
        width: context.deviceWidth * 0.15,
        height: context.deviceHeight * 0.1,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _NotificationCardTitle(
            title: notificationsModel.title,
          ),
          _NotificationCardDate(
            date: notificationsModel.date,
          ),
        ],
      ),
      subtitle: Text(notificationsModel.subtitle),
    );
  }
}
