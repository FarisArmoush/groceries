import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';

class UserDataListTile extends StatelessWidget {
  const UserDataListTile({
    required this.title,
    required this.subtitle,
    this.onTap,
    super.key,
  });

  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle ?? ''),
      trailing: onTap != null ? const NextArrowIcon() : const SizedBox.shrink(),
    );
  }
}
