import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

//Took this code from the `salomon_bottom_bar` package and modified some of it.
// https://pub.dev/packages/salomon_bottom_bar

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    required this.items,
    this.backgroundColor = Colors.transparent,
    this.currentIndex = 0,
    this.onTap,
    this.selectedItemColor,
    this.unselectedItemColor,
    this.selectedColorOpacity,
    this.itemShape = const StadiumBorder(),
    this.margin = const EdgeInsets.all(8),
    this.itemPadding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeOutQuint,
    super.key,
  });

  final List<AppBottomNavigationBarItem> items;

  final int currentIndex;

  final void Function(int)? onTap;

  final Color backgroundColor;

  final Color? selectedItemColor;

  final Color? unselectedItemColor;

  final double? selectedColorOpacity;

  final ShapeBorder itemShape;

  final EdgeInsets margin;

  final EdgeInsets itemPadding;

  final Duration duration;

  final Curve curve;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: SafeArea(
        minimum: margin,
        child: Row(
          mainAxisAlignment: items.length <= 2
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.spaceAround,
          children: [
            for (final item in items)
              TweenAnimationBuilder<double>(
                tween: Tween(
                  end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
                ),
                curve: curve,
                duration: duration,
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
                    shape: itemShape,
                    child: InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () => onTap?.call(items.indexOf(item)),
                      customBorder: itemShape,
                      focusColor: selectedColor.withOpacity(0.1),
                      highlightColor: selectedColor.withOpacity(0.1),
                      splashColor: selectedColor.withOpacity(0.1),
                      hoverColor: selectedColor.withOpacity(0.1),
                      child: Padding(
                        padding: itemPadding -
                            (Directionality.of(context) == TextDirection.ltr
                                ? EdgeInsets.only(right: itemPadding.right * t)
                                : EdgeInsets.only(
                                    left: itemPadding.left * t,
                                  )),
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
                            ClipRect(
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                height: 30,
                                child: Align(
                                  alignment: const Alignment(-0.2, 0),
                                  widthFactor: t,
                                  child: Padding(
                                    padding: Directionality.of(context) ==
                                            TextDirection.ltr
                                        ? EdgeInsets.only(
                                            left: itemPadding.left / 2,
                                            right: itemPadding.right,
                                          )
                                        : EdgeInsets.only(
                                            left: itemPadding.left,
                                            right: itemPadding.right / 2,
                                          ),
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                        color: Color.lerp(
                                          selectedColor.withOpacity(0),
                                          selectedColor,
                                          t,
                                        ),
                                        fontSize: 14,
                                        fontFamily: AppFonts.medium(context),
                                      ),
                                      child: item.title,
                                    ),
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

class AppBottomNavigationBarItem {
  const AppBottomNavigationBarItem({
    required this.title,
    required this.icon,
    this.selectedColor,
    this.unselectedColor,
    this.activeIcon,
  });

  final Widget title;
  final Widget icon;
  final Color? selectedColor;
  final Color? unselectedColor;
  final Widget? activeIcon;
}
