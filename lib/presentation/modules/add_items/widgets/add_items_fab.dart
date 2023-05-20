import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';

class AddItemsFab extends StatelessWidget {
  const AddItemsFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      tooltip: AppTranslations.done,
      label: Text(
        AppTranslations.done,
      ),
      onPressed: () => context.pop(),
    );
  }
}
