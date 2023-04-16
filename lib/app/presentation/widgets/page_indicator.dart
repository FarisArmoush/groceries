import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/color_constants.dart';
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
        activeDotColor: ColorConstants.red,
        dotColor: ColorConstants.offWhite,
        dotWidth: size.width * 0.3,
        dotHeight: 4,
      ),
    );
  }
}
