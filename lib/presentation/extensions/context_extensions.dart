import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/theme_settings/cubit/theme_cubit.dart';

/// Extension containing utility methods for the BuildContext class.
extension ContextExtensions on BuildContext {
  /// returns the extent of the device.
  Size get deviceSize => MediaQuery.maybeSizeOf(this)!;

  /// returns the horizontal extent of the device's size
  double get deviceWidth => MediaQuery.maybeSizeOf(this)!.width;

  /// returns the vertical extent of the device's size
  double get deviceHeight => MediaQuery.maybeSizeOf(this)!.height;

  /// returns the current [ThemeData].
  ThemeData get theme => Theme.of(this);

  /// returns the current [ColorScheme].
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// returns the current [TextTheme].
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// returns a bool indicating if the current theme is dark or not.
  bool get isDarkMode => watch<ThemeCubit>().state == ThemeMode.dark;
}
