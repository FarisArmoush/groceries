import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/notifications/bloc/notifications_bloc.dart';
import 'package:groceries/presentation/modules/notifications/widgets/notifications_form.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.notifications,
        ),
      ),
      body: BlocProvider(
        create: (context) => NotificationsBloc()..add(LoadNotifications()),
        child: const NotificationsForm(),
      ),
    );
  }
}
