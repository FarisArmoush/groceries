import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
    Key? key,
    this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Assets.svg.icBell.svg(
        color: color ?? Theme.of(context).primaryColor,
      ),
      onPressed: () => context.pushNamed(AppNamedRoutes.notifications),
    );
  }
}
