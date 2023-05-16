import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';

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
      title: Text(title),
      tileColor: Colors.transparent,
      trailing: const NextArrowIcon(),
    );
  }
}
