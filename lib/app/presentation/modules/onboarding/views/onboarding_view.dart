import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/modules/onboarding/widgets/base_onboarding_page.dart';
import 'package:groceries/app/presentation/modules/onboarding/widgets/leave_onboarding_button.dart';
import 'package:groceries/app/presentation/modules/onboarding/widgets/onboarding_next_page_button.dart';
import 'package:groceries/gen/assets.gen.dart';

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
    final remoteConfig = context.watch<RemoteConfigCubit>().remoteConfigRepo;
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
              illustrationPath: Assets.svg.illCelebrating,
              title: remoteConfig.onboardingFirstHeader,
              body: remoteConfig.onboardingFirstBody,
              backgroundColor: Colors.amber,
            ),
            BaseOnboardingPage(
              illustrationPath: Assets.svg.illMail,
              title: remoteConfig.onboardingSecondHeader,
              body: remoteConfig.onboardingSecondBody,
              backgroundColor: Colors.purple,
            ),
            BaseOnboardingPage(
              illustrationPath: Assets.svg.illEating,
              title: remoteConfig.onnboardingThirdHeader,
              body: remoteConfig.onboardingThirdBody,
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
