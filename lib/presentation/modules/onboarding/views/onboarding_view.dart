import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/data/models/onboarding_page_model/onboarding_page_model.dart';
import 'package:groceries/presentation/modules/onboarding/bloc/onboarding_bloc.dart';
import 'package:groceries/presentation/modules/onboarding/widgets/leave_onboarding_button.dart';
import 'package:groceries/presentation/modules/onboarding/widgets/onboarding_next_page_button.dart';
import 'package:groceries/presentation/modules/onboarding/widgets/onboarding_page_base.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        final isLastPage = state.index == pages.length - 1;
        return Scaffold(
          body: PageView(
            controller: pageController,
            onPageChanged: (value) => context.read<OnboardingBloc>().add(
                  OnboardingEvent.updateIndex(value),
                ),
            children: List.generate(
              pages.length,
              (index) => OnboardingPageBase(onboardingPageModel: pages[index]),
            ),
          ),
          floatingActionButton: isLastPage
              ? const LeaveOnboardingButton()
              : OnboardingNextPageButton(
                  pageController: pageController,
                ),
        );
      },
    );
  }

  final pages = <OnboardingPageModel>[
    OnboardingPageModel(
      illustrationPath: Assets.illustrations.celebrating.path,
      title: Translations.onboarding.firstTitle,
      body: Translations.onboarding.firstBody,
      backgroundColor: Colors.amber,
    ),
    OnboardingPageModel(
      illustrationPath: Assets.illustrations.mail.path,
      title: Translations.onboarding.secondTitle,
      body: Translations.onboarding.secondBody,
      backgroundColor: Colors.purple,
    ),
    OnboardingPageModel(
      illustrationPath: Assets.illustrations.eating.path,
      title: Translations.onboarding.thirdTitle,
      body: Translations.onboarding.thirdBody,
      backgroundColor: Colors.blue,
    ),
  ];
}
