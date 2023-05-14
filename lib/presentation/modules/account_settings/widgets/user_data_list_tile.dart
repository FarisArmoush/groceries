import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class UserDataListTile extends StatelessWidget {
  const UserDataListTile({
    required this.title,
    required this.subtitle,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: AppTextStyles.regular(
          context: context,
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        subtitle ?? '',
        style: AppTextStyles.regular(
          context: context,
          color: Theme.of(context).hintColor,
          fontSize: 12,
        ),
      ),
      trailing: onTap != null
          ? const CupertinoListTileChevron()
          : const SizedBox.shrink(),
    );
  }
}
