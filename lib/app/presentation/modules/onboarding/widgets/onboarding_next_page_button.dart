import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/gen/assets.gen.dart';

class OnboardingNextPageButton extends StatelessWidget {
  const OnboardingNextPageButton({
    required this.controller,
    Key? key,
  }) : super(key: key);

  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      onPressed: () => controller.nextPage(
        curve: Curves.easeInOut,
        duration: const Duration(
          milliseconds: 500,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColorLight,
      tooltip: 'Next Page',
      child: SvgPicture.asset(
        Assets.svg.icRightArrow,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
