import 'package:flutter/material.dart';
import 'package:groceries/app/data/models/notification_model.dart';
import 'package:groceries/app/presentation/widgets/cached_image.dart';
import 'package:groceries/app/utils/constants/app_text_styles.dart';

part '__notification_card_date.dart';
part '__notification_card_subtitle.dart';
part '__notification_card_title.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    required this.onTap,
    required this.notificationsModel,
    Key? key,
  }) : super(key: key);

  final NotificationModel notificationsModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: size.height * 0.0125,
        horizontal: size.width * 0.04,
      ),
      onTap: onTap,
      leading: CachedImage(
        imageUrl: notificationsModel.imageUrl,
        width: size.width * 0.15,
        height: size.height * 0.1,
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
      subtitle: _NotificationCardSubtitle(
        subtitle: notificationsModel.subtitle,
      ),
    );
  }
}
