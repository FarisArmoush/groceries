import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bottom_navigation_bar_item.freezed.dart';

@freezed
class AppBottomNavigationBarItem with _$AppBottomNavigationBarItem {
  factory AppBottomNavigationBarItem({
    required Widget title,
    required Widget icon,
    Color? selectedColor,
    Color? unselectedColor,
    Widget? activeIcon,
  }) = _AppBottomNavigationBarItem;
}
