import 'package:flutter/material.dart';

class AddItemsView extends StatelessWidget {
  const AddItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Items'),
      ),
      body: const Center(
        child: Text('AddItemsView is Working!'),
      ),
    );
  }
}
