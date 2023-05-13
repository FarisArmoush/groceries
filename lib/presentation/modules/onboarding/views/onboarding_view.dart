import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/onboarding/widgets/base_onboarding_page.dart';
import 'package:groceries/presentation/modules/onboarding/widgets/leave_onboarding_button.dart';
import 'package:groceries/presentation/modules/onboarding/widgets/onboarding_next_page_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = CarouselController();

  late int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            aspectRatio: 1 / 3,
            height: double.infinity,
            viewportFraction: 1 / 1,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) => setState(() {
              currentPage = index;
            }),
          ),
          items: [
            BaseOnboardingPage(
              illustrationPath: Assets.svg.illCelebrating.path,
              title: '1',
              body: 'BODY 1',
              backgroundColor: Colors.amber,
            ),
            BaseOnboardingPage(
              illustrationPath: Assets.svg.illMail.path,
              title: '2',
              body: 'BODY 2',
              backgroundColor: Colors.purple,
            ),
            BaseOnboardingPage(
              illustrationPath: Assets.svg.illEating.path,
              title: '3',
              body: 'BODY 3',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
      floatingActionButton: currentPage == 2
          ? const LeaveOnboardingButton()
          : OnboardingNextPageButton(controller: controller),
    );
  }
}
