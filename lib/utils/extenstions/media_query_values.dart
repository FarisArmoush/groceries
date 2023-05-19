import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get deviceHeight => MediaQuery.of(this).size.height;
  Size get deviceSize => MediaQuery.of(this).size;
}
