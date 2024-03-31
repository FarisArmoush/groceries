import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/strings/account_settings_keys.dart';

void main() {
  group('AccountSettingsKeys', () {
    test('translations should not be null', () {
      final keys = AccountSettingsKeys();

      expect(keys.editUserImage, isNotNull);
      expect(keys.title, isNotNull);
      expect(keys.description, isNotNull);
      expect(keys.verified, isNotNull);
      expect(keys.accountMetaData, isNotNull);
      expect(keys.logout, isNotNull);
      expect(keys.logoutBottomSheetHeader, isNotNull);
      expect(keys.logoutBottomSheetBody, isNotNull);
      expect(keys.yesLogout, isNotNull);
      expect(keys.dontLogout, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = AccountSettingsKeys();

      expect(keys.editUserImage.isNotEmpty, true);
      expect(keys.title.isNotEmpty, true);
      expect(keys.description.isNotEmpty, true);
      expect(keys.verified.isNotEmpty, true);
      expect(keys.accountMetaData.isNotEmpty, true);
      expect(keys.logout.isNotEmpty, true);
      expect(keys.logoutBottomSheetHeader.isNotEmpty, true);
      expect(keys.logoutBottomSheetBody.isNotEmpty, true);
      expect(keys.yesLogout.isNotEmpty, true);
      expect(keys.dontLogout.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = AccountSettingsKeys();
      // Make sure EasyLocalization is initialized before running this test
      // This could be done in a setup function or a test widget
      // For example: await tester.pumpWidget(MyApp());
      expect(tr(keys.editUserImage), isNotNull);
      expect(tr(keys.title), isNotNull);
      expect(tr(keys.description), isNotNull);
      expect(tr(keys.verified), isNotNull);
      expect(tr(keys.accountMetaData), isNotNull);
      expect(tr(keys.logout), isNotNull);
      expect(tr(keys.logoutBottomSheetHeader), isNotNull);
      expect(tr(keys.logoutBottomSheetBody), isNotNull);
      expect(tr(keys.yesLogout), isNotNull);
      expect(tr(keys.dontLogout), isNotNull);
    });
  });
}
