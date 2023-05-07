import 'package:flutter/material.dart';
import 'package:groceries/app/utils/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.pageController,
    this.count,
    Key? key,
  }) : super(key: key);

  final PageController pageController;
  final int? count;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SmoothPageIndicator(
      controller: pageController,
      count: count ?? 3,
      effect: JumpingDotEffect(
        spacing: 0,
        activeDotColor: AppColors.darkRed,
        dotColor: const Color.fromARGB(255, 217, 217, 217),
        dotWidth: size.width * 0.3,
        dotHeight: 4,
      ),
    );
  }
}
