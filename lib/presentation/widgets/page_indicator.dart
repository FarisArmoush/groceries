import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// {@template page_indicator}
/// A widget that represents a page indicator for indicating the
/// current page in a scrollable view.
///
/// * The [pageController] parameter specifies the [PageController]
/// instance that controls the page indicator.
///
/// * The [count] parameter specifies the total number of
/// pages to display in the indicator.
/// {@endtemplate}
class PageIndicator extends StatelessWidget {
  /// {@macro page_indicator}
  const PageIndicator({
    required this.pageController,
    this.count,
    super.key,
  });

  /// The [PageController] instance that controls the page indicator.
  final PageController pageController;

  /// The total number of pages to display in the indicator.
  /// If not provided, the default value is 3.
  final int? count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count ?? 3,
      effect: JumpingDotEffect(
        spacing: 0,
        activeDotColor: AppColors.darkRed,
        dotColor: const Color.fromARGB(255, 217, 217, 217),
        dotWidth: context.deviceWidth * 0.3,
        dotHeight: 4,
      ),
    );
  }
}
