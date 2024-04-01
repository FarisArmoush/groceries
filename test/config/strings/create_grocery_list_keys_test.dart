import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/config/localization/app_translations.dart';

void main() {
  group('CreateGroceryListKeys', () {
    test('translations should not be null', () {
      final keys = CreateGroceryListKeys();

      expect(keys.createList, isNotNull);
      expect(keys.createNewList, isNotNull);
      expect(keys.addListImage, isNotNull);
      expect(keys.invitePeopleToList, isNotNull);
      expect(keys.copyInvitationLink, isNotNull);
      expect(keys.yesCancelListCreation, isNotNull);
      expect(keys.dontCancelListCreation, isNotNull);
      expect(keys.listCreationCancelDialogHeader, isNotNull);
      expect(keys.listCreationCancelDialogBody, isNotNull);
      expect(keys.listCreatedUnsuccessfullyHeader, isNotNull);
      expect(keys.listCreatedUnsuccessfullyBody, isNotNull);
      expect(keys.listCreatedSuccessfullyHeader, isNotNull);
      expect(keys.listCreatedSuccessfullyBody, isNotNull);
      expect(keys.goHome, isNotNull);
      expect(keys.tryAgain, isNotNull);
      expect(keys.goToList, isNotNull);
    });

    test('translations should not be empty', () {
      final keys = CreateGroceryListKeys();

      expect(keys.createList.isNotEmpty, true);
      expect(keys.createNewList.isNotEmpty, true);
      expect(keys.addListImage.isNotEmpty, true);
      expect(keys.invitePeopleToList.isNotEmpty, true);
      expect(keys.copyInvitationLink.isNotEmpty, true);
      expect(keys.yesCancelListCreation.isNotEmpty, true);
      expect(keys.dontCancelListCreation.isNotEmpty, true);
      expect(keys.listCreationCancelDialogHeader.isNotEmpty, true);
      expect(keys.listCreationCancelDialogBody.isNotEmpty, true);
      expect(keys.listCreatedUnsuccessfullyHeader.isNotEmpty, true);
      expect(keys.listCreatedUnsuccessfullyBody.isNotEmpty, true);
      expect(keys.listCreatedSuccessfullyHeader.isNotEmpty, true);
      expect(keys.listCreatedSuccessfullyBody.isNotEmpty, true);
      expect(keys.goHome.isNotEmpty, true);
      expect(keys.tryAgain.isNotEmpty, true);
      expect(keys.goToList.isNotEmpty, true);
    });

    test('translations should be localized', () {
      final keys = CreateGroceryListKeys();

      expect(tr(keys.createList), isNotNull);
      expect(tr(keys.createNewList), isNotNull);
      expect(tr(keys.addListImage), isNotNull);
      expect(tr(keys.invitePeopleToList), isNotNull);
      expect(tr(keys.copyInvitationLink), isNotNull);
      expect(tr(keys.yesCancelListCreation), isNotNull);
      expect(tr(keys.dontCancelListCreation), isNotNull);
      expect(tr(keys.listCreationCancelDialogHeader), isNotNull);
      expect(tr(keys.listCreationCancelDialogBody), isNotNull);
      expect(tr(keys.listCreatedUnsuccessfullyHeader), isNotNull);
      expect(tr(keys.listCreatedUnsuccessfullyBody), isNotNull);
      expect(tr(keys.listCreatedSuccessfullyHeader), isNotNull);
      expect(tr(keys.listCreatedSuccessfullyBody), isNotNull);
      expect(tr(keys.goHome), isNotNull);
      expect(tr(keys.tryAgain), isNotNull);
      expect(tr(keys.goToList), isNotNull);
    });
  });
}
