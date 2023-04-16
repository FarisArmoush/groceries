import 'package:flutter/material.dart';

class GroceryListSettingsView extends StatelessWidget {
  const GroceryListSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Group Settings'),
      ),
      body: const Center(
        child: Text('ListSettingsView is Working!'),
      ),
    );
  }
}
