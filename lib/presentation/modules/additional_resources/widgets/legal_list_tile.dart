import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class LegalListTile extends StatelessWidget {
  const LegalListTile({
    required this.title,
    required this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: AppTextStyles.poppinsRegular(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
        ),
      ),
      tileColor: Colors.transparent,
      trailing: const CupertinoListTileChevron(),
    );
  }
}
