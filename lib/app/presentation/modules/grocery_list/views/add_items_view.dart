import 'package:flutter/material.dart';
import 'package:groceries/app/core/localization/app_translations.dart';

class AddItemsView extends StatelessWidget {
  const AddItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.addItems,
        ),
      ),
      body: const Center(
        child: Text(
          'AddItemsView is Working!',
        ),
      ),
    );
  }
}
