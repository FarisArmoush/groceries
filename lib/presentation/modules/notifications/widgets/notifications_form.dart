import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/notifications/bloc/notifications_bloc.dart';
import 'package:groceries/presentation/modules/notifications/widgets/no_notifications_yet.dart';
import 'package:groceries/presentation/modules/notifications/widgets/notifications_list.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';

class NotificationsForm extends StatelessWidget {
  const NotificationsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsBloc, NotificationsState>(
      builder: (context, state) {
        if (state is NotificationsInitial) {
          return const AppLoadingIndicator();
        }
        if (state is NotificationsLoaded && state.notifications.isEmpty) {
          return const NoNotificationsYet();
        } else if (state is NotificationsLoaded) {
          return NotificationsList(list: state.notifications);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
