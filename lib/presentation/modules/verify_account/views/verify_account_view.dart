import 'package:flutter/material.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify'),
      ),
      body: const Center(
        child: Text('VerifyAccountView is Working!'),
      ),
    );
  }
}
