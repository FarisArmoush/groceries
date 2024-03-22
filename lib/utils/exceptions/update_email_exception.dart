import 'package:groceries/config/localization/app_translations.dart';

class UpdateEmailException implements Exception {
  const UpdateEmailException([
    this.message,
  ]);

  factory UpdateEmailException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return UpdateEmailException(
          AppTranslations.errorMessages.invalidEmail,
        );
      case 'requires-recent-login':
        return UpdateEmailException(
          AppTranslations.errorMessages.requiresRecentLogin,
        );
      case 'email-already-in-use':
        return UpdateEmailException(
          AppTranslations.errorMessages.emailAlreadyInUse,
        );
      default:
        return UpdateEmailException(
          AppTranslations.errorMessages.defaultErrorMessage,
        );
    }
  }

  final String? message;
}
