import 'package:faker/faker.dart';
import 'package:groceries/data/models/notification_model.dart';
import 'package:groceries/domain/repositories/base_notifications_repository.dart';

class MockNotificationsRepository extends BaseNotificationsRepository {
  @override
  Future<List<NotificationModel>> getNotifications() async {
    return notifications;
  }

  @override
  List<NotificationModel> get notifications => [
        NotificationModel(
          id: 'asdgf',
          title: faker.person.name(),
          subtitle: faker.lorem.sentence(),
          date: faker.date.dateTime(),
          imageUrl: faker.image.image(),
        ),
        NotificationModel(
          id: 'asdgf',
          title: faker.person.name(),
          subtitle: faker.lorem.sentence(),
          date: faker.date.dateTime(),
          imageUrl: faker.image.image(),
        ),
        NotificationModel(
          id: 'asdgf',
          title: faker.person.name(),
          subtitle: faker.lorem.sentence(),
          date: faker.date.dateTime(),
          imageUrl: faker.image.image(),
        ),
      ];
}
