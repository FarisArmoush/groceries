part of '../app_extensions.dart';

extension WidgetsAsExtension on Widget {
  Center centered() => Center(child: this);
  SliverToBoxAdapter asSliver() => SliverToBoxAdapter(child: this);
}
