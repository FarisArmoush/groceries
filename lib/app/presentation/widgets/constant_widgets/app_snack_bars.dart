import 'package:flutter/material.dart';

class AppSnackBars {
  static void successSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: Colors.green,
        elevation: 5,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static void failedSnackBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: Theme.of(context).primaryColorLight,
        elevation: 5,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
