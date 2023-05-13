import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/data/models/notification_model.dart';
import 'package:groceries/data/repositories/mock_repositories/mock_notifications_repository.dart';
import 'package:groceries/domain/repositories/base_notifications_repository.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(NotificationsInitial()) {
    final BaseNotificationsRepository notificationsRepository =
        MockNotificationsRepository();
    on<LoadNotifications>(
      (event, emit) async {
        await notificationsRepository.getNotifications();
        emit(
          NotificationsLoaded(
            notifications: notificationsRepository.notifications,
          ),
        );
      },
    );
    on<DeleteNotification>(
      (event, emit) {
        if (state is NotificationsLoaded) {
          emit(
            NotificationsLoaded(
              notifications: List.from(
                notificationsRepository.notifications
                  ..remove(event.notification),
              ),
            ),
          );
        }
      },
    );
    on<ClearAllNotifications>(
      (event, emit) {
        if (state is NotificationsLoaded) {
          NotificationsLoaded(
            notifications: notificationsRepository.notifications..clear(),
          );
        }
      },
    );
  }
}
