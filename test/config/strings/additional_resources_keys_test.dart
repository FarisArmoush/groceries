import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/strings/additional_resources_keys.dart';

void main() {
  group('AccountSettingsKeys', () {
    test('translations should not be null', () {
      final keys = AdditionalResourcesKeys();

      expect(keys.title, isNotNull);
      expect(keys.description, isNotNull);
      expect(keys.appVersion, isNotNull);
      expect(keys.helpImproveApp, isNotNull);
      expect(keys.sendCrashReports, isNotNull);
      expect(keys.sendCrashReportsDescription, isNotNull);
      expect(keys.credits, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = AdditionalResourcesKeys();

      expect(keys.title.isNotEmpty, true);
      expect(keys.description.isNotEmpty, true);
      expect(keys.appVersion.isNotEmpty, true);
      expect(keys.helpImproveApp.isNotEmpty, true);
      expect(keys.sendCrashReports.isNotEmpty, true);
      expect(keys.sendCrashReportsDescription.isNotEmpty, true);
      expect(keys.credits.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = AdditionalResourcesKeys();
      expect(tr(keys.title), isNotNull);
      expect(tr(keys.description), isNotNull);
      expect(tr(keys.appVersion), isNotNull);
      expect(tr(keys.helpImproveApp), isNotNull);
      expect(tr(keys.sendCrashReports), isNotNull);
      expect(tr(keys.sendCrashReportsDescription), isNotNull);
      expect(tr(keys.credits), isNotNull);
    });
  });
}
