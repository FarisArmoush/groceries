import 'package:flutter/material.dart';

class AddRecipeToListBottomSheet extends StatelessWidget {
  const AddRecipeToListBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return const Placeholder();
      },
    );
  }
}
