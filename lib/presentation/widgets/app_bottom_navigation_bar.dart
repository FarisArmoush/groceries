import 'package:flutter/material.dart';
import 'package:groceries/data/models/app_bottom_navigation_bar_item/app_bottom_navigation_bar_item.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:groceries_theme/app_theme.dart';

///Took this code from the `salomon_bottom_bar` package and modified some of it.
// https://pub.dev/packages/salomon_bottom_bar

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    required this.items,
    this.currentIndex = 0,
    this.onTap,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.selectedColorOpacity,
    this.itemPadding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    super.key,
  });

  final List<AppBottomNavigationBarItem> items;

  final int currentIndex;

  final void Function(int)? onTap;

  final Color? selectedItemColor;

  final Color? unselectedItemColor;

  final double? selectedColorOpacity;

  final EdgeInsets itemPadding;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.theme.scaffoldBackgroundColor,
      child: SafeArea(
        minimum: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (final item in items)
              TweenAnimationBuilder<double>(
                tween: Tween(
                  end: items.indexOf(item) == currentIndex ? 1 : 0,
                ),
                curve: Curves.easeOutQuint,
                duration: 500.milliseconds,
                builder: (context, t, _) {
                  final selectedColor = item.selectedColor ??
                      selectedItemColor ??
                      context.theme.primaryColor;

                  final unselectedColor = item.unselectedColor ??
                      unselectedItemColor ??
                      context.theme.iconTheme.color;

                  return Material(
                    type: MaterialType.button,
                    color: Color.lerp(
                      selectedColor.withOpacity(0),
                      selectedColor.withOpacity(selectedColorOpacity ?? 0.1),
                      t,
                    ),
                    shape: const StadiumBorder(),
                    child: InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () => onTap?.call(items.indexOf(item)),
                      customBorder: const StadiumBorder(),
                      focusColor: selectedColor.withOpacity(0.1),
                      highlightColor: selectedColor.withOpacity(0.1),
                      splashColor: selectedColor.withOpacity(0.1),
                      hoverColor: selectedColor.withOpacity(0.1),
                      child: Padding(
                        padding: itemPadding,
                        child: Row(
                          children: [
                            IconTheme(
                              data: IconThemeData(
                                color: Color.lerp(
                                  unselectedColor,
                                  selectedColor,
                                  t,
                                ),
                                size: 24,
                              ),
                              child: items.indexOf(item) == currentIndex
                                  ? item.activeIcon ?? item.icon
                                  : item.icon,
                            ),
                            SizedBox(
                              width: context.deviceWidth * 0.025,
                            ),
                            ClipRect(
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                height: 30,
                                child: Align(
                                  alignment: const Alignment(-0.2, 0),
                                  widthFactor: t,
                                  child: DefaultTextStyle(
                                    style: TextStyle(
                                      color: Color.lerp(
                                        selectedColor.withOpacity(0),
                                        selectedColor,
                                        t,
                                      ),
                                      fontSize: 14,
                                      fontWeight: AppFontWeights.medium,
                                    ),
                                    child: item.title,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
