part of 'widgets.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.pageController,
    this.count = 3,
    super.key,
  });

  final PageController pageController;

  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
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
