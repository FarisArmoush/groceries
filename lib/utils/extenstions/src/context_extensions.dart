part of '../app_extensions.dart';

/// Extension on [BuildContext] providing convenient
/// properties related to device dimensions and theme.
extension ContextExtensions on BuildContext {
  /// Returns the width of the device screen.
  double get deviceWidth => MediaQuery.sizeOf(this).width;

  /// Returns the height of the device screen.
  double get deviceHeight => MediaQuery.sizeOf(this).height;

  /// Returns the size of the device screen as a [Size] object.
  Size get deviceSize => MediaQuery.sizeOf(this);

  /// Returns the current theme data of the app.
  ThemeData get theme => Theme.of(this);

  /// Returns a boolean indicating whether the app is in dark mode.
  bool get isDarkMode => watch<ThemeCubit>().state == ThemeMode.dark;
}
