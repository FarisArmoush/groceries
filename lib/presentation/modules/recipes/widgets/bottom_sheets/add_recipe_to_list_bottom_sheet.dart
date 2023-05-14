import 'package:flutter/material.dart';

class AddRecipeToListBottomSheet extends StatelessWidget {
  const AddRecipeToListBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      enableDrag: false,
      builder: (context) {
        return const Placeholder();
      },
    );
  }
}
