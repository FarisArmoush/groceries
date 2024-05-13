import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_page_model.freezed.dart';

@freezed
class OnboardingPageModel with _$OnboardingPageModel {
  factory OnboardingPageModel({
    required String illustrationPath,
    required String title,
    required String body,
    required Color backgroundColor,
  }) = _OnboardingPageModel;
}
