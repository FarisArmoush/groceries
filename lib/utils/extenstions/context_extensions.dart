import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double get deviceWidth => MediaQuery.sizeOf(this).width;
  double get deviceHeight => MediaQuery.sizeOf(this).height;
  Size get deviceSize => MediaQuery.sizeOf(this);
  ThemeData get theme => Theme.of(this);
}
