import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';

class OnboardingNextPageButton extends StatelessWidget {
  const OnboardingNextPageButton({
    required this.controller,
    super.key,
  });

  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      tooltip: 'Next Page',
      onPressed: () => controller.nextPage(
        curve: Curves.easeInOut,
        duration: const Duration(
          milliseconds: 500,
        ),
      ),
      child: NextArrowIcon(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
