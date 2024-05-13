import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/presentation/models/onboarding_page_model/onboarding_page_model.dart';

void main() {
  group('OnboardingPageModel', () {
    test('OnboardingPageModel.Create a valid instance', () {
      final onboardingPageModel = OnboardingPageModel(
        illustrationPath: 'assets/illustration.png',
        title: 'Welcome to MyApp',
        body: 'Explore the amazing features of our app.',
        backgroundColor: Colors.blue,
      );
      expect(onboardingPageModel, isA<OnboardingPageModel>());
      expect(onboardingPageModel.illustrationPath, 'assets/illustration.png');
      expect(onboardingPageModel.title, 'Welcome to MyApp');
      expect(
        onboardingPageModel.body,
        'Explore the amazing features of our app.',
      );
      expect(onboardingPageModel.backgroundColor, Colors.blue);
    });

    test('OnboardingPageModel.Equality', () {
      final onboardingPageModel1 = OnboardingPageModel(
        illustrationPath: 'assets/illustration1.png',
        title: 'Page 1',
        body: 'Page 1 content.',
        backgroundColor: Colors.red,
      );

      final onboardingPageModel2 = OnboardingPageModel(
        illustrationPath: 'assets/illustration1.png',
        title: 'Page 1',
        body: 'Page 1 content.',
        backgroundColor: Colors.red,
      );
      expect(onboardingPageModel1, equals(onboardingPageModel2));
    });
  });
}
