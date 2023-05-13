part of 'notifications_bloc.dart';

abstract class NotificationsState extends Equatable {
  const NotificationsState();

  @override
  List<Object> get props => [];
}

class NotificationsInitial extends NotificationsState {}

class NotificationsLoaded extends NotificationsState {
  const NotificationsLoaded({required this.notifications});
  final List<NotificationModel> notifications;

  @override
  List<Object> get props => [notifications];
}
