import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/translations.dart';

void main() {
  group('GeneralKeys', () {
    test('translations should not be null', () {
      final keys = GeneralKeys();

      expect(keys.close, isNotNull);
      expect(keys.done, isNotNull);
      expect(keys.listName, isNotNull);
      expect(keys.takePhoto, isNotNull);
      expect(keys.uploadPhotoFromGallery, isNotNull);
      expect(keys.username, isNotNull);
      expect(keys.email, isNotNull);
      expect(keys.password, isNotNull);
      expect(keys.submit, isNotNull);
      expect(keys.tryAgain, isNotNull);
      expect(keys.yesCancel, isNotNull);
      expect(keys.dontCancel, isNotNull);
      expect(keys.discardChanges, isNotNull);
      expect(keys.loadingMessage, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = GeneralKeys();

      expect(keys.close.isNotEmpty, true);
      expect(keys.done.isNotEmpty, true);
      expect(keys.listName.isNotEmpty, true);
      expect(keys.takePhoto.isNotEmpty, true);
      expect(keys.uploadPhotoFromGallery.isNotEmpty, true);
      expect(keys.username.isNotEmpty, true);
      expect(keys.email.isNotEmpty, true);
      expect(keys.password.isNotEmpty, true);
      expect(keys.submit.isNotEmpty, true);
      expect(keys.tryAgain.isNotEmpty, true);
      expect(keys.yesCancel.isNotEmpty, true);
      expect(keys.dontCancel.isNotEmpty, true);
      expect(keys.discardChanges.isNotEmpty, true);
      expect(keys.loadingMessage.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = GeneralKeys();

      expect(tr(keys.close), isNotNull);
      expect(tr(keys.done), isNotNull);
      expect(tr(keys.listName), isNotNull);
      expect(tr(keys.takePhoto), isNotNull);
      expect(tr(keys.uploadPhotoFromGallery), isNotNull);
      expect(tr(keys.username), isNotNull);
      expect(tr(keys.email), isNotNull);
      expect(tr(keys.password), isNotNull);
      expect(tr(keys.submit), isNotNull);
      expect(tr(keys.tryAgain), isNotNull);
      expect(tr(keys.yesCancel), isNotNull);
      expect(tr(keys.dontCancel), isNotNull);
      expect(tr(keys.discardChanges), isNotNull);
      expect(tr(keys.loadingMessage), isNotNull);
    });
  });
}
