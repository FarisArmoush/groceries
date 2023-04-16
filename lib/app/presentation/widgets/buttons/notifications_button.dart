import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/gen/assets.gen.dart';

class NotificationsButton extends StatelessWidget {
  const NotificationsButton({
    Key? key,
    this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        Assets.svg.icBell,
        color: color ?? Theme.of(context).primaryColor,
      ),
      onPressed: () => context.pushNamed(AppNamedRoutes.notifications),
    );
  }
}
