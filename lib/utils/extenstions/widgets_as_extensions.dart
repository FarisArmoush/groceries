import 'package:flutter/material.dart';

extension WidgetsAsExtension on Widget {
  Center centered() => Center(child: this);
  SliverToBoxAdapter asSliver() => SliverToBoxAdapter(child: this);
  Widget bottomButtonSpacing() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 16,
        ),
        child: this,
      ),
    );
  }
}
