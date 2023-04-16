import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/app/presentation/modules/onboarding/widgets/note.dart';
import 'package:groceries/app/presentation/widgets/buttons/app_button.dart';
import 'package:groceries/app/presentation/widgets/buttons/next_button.dart';
import 'package:groceries/app/presentation/widgets/page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  late int _currentPage;

  @override
  void initState() {
    _currentPage = 0;
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.toInt();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PageIndicator(
          pageController: _pageController,
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: headers(context).length,
        itemBuilder: (BuildContext context, int index) {
          return Note(
            header: headers(context)[index],
            body: bodies(context)[index],
          );
        },
      ),
      bottomSheet: ColoredBox(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: _currentPage == 2
              ? AppButton(
                  text: 'Get Started',
                  buttonStyle: AppButtonStyles.red(context),
                  onTap: () => context.pushReplacementNamed(
                    AppNamedRoutes.welcome,
                  ),
                )
              : Row(
                  children: [
                    const Spacer(),
                    NextButton(
                      onTap: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 750),
                          curve: Curves.fastOutSlowIn,
                        );
                      },
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  List<String> headers(BuildContext context) => [
        context
            .watch<RemoteConfigCubit>()
            .remoteConfigRepo
            .onboardingFirstHeader,
        context
            .watch<RemoteConfigCubit>()
            .remoteConfigRepo
            .onboardingSecondHeader,
        context
            .watch<RemoteConfigCubit>()
            .remoteConfigRepo
            .onnboardingThirdHeader,
      ];
  List<String> bodies(BuildContext context) => [
        context.watch<RemoteConfigCubit>().remoteConfigRepo.onboardingFirstBody,
        context
            .watch<RemoteConfigCubit>()
            .remoteConfigRepo
            .onboardingSecondBody,
        context.watch<RemoteConfigCubit>().remoteConfigRepo.onboardingThirdBody,
      ];
}
