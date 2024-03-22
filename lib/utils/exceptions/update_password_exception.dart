import 'package:groceries/config/localization/app_translations.dart';

class UpdatePasswordException implements Exception {
  const UpdatePasswordException([
    this.message,
  ]);
  factory UpdatePasswordException.fromCode(String code) {
    switch (code) {
      case 'weak-password':
        return UpdatePasswordException(
          AppTranslations.errorMessages.weakPassword,
        );
      case 'requires-recent-login':
        return UpdatePasswordException(
          AppTranslations.errorMessages.requiresRecentLogin,
        );
      default:
        return UpdatePasswordException(
          AppTranslations.errorMessages.defaultError,
        );
    }
  }
  final String? message;
}
