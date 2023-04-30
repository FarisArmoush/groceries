import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
import 'package:groceries/app/presentation/modules/notifications/bloc/notifications_bloc.dart';
import 'package:groceries/app/presentation/modules/notifications/widgets/notifications_form.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({Key? key}) : super(key: key);

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
