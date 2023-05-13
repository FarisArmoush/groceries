import 'package:groceries/data/models/notification_model.dart';

abstract class BaseNotificationsRepository {
  Future<List<NotificationModel>> getNotifications();

  List<NotificationModel> get notifications;
}
