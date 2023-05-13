part of 'notifications_bloc.dart';

abstract class NotificationsEvent extends Equatable {
  const NotificationsEvent();

  @override
  List<Object> get props => [];
}

class LoadNotifications extends NotificationsEvent {}

class DeleteNotification extends NotificationsEvent {
  const DeleteNotification({required this.notification});
  final NotificationModel notification;

  @override
  List<Object> get props => [notification];
}

class ClearAllNotifications extends NotificationsEvent {}
