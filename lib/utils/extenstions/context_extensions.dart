import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/theme_settings/cubit/theme_cubit.dart';

extension ContextExtensions on BuildContext {
  double get deviceWidth => MediaQuery.sizeOf(this).width;
  double get deviceHeight => MediaQuery.sizeOf(this).height;
  Size get deviceSize => MediaQuery.sizeOf(this);
  ThemeData get theme => Theme.of(this);
  bool get isDarkMode => watch<ThemeCubit>().state == ThemeMode.dark;
}
