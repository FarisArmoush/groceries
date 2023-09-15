part of '../exceptions.dart';

class UpdateEmailException implements Exception {
  const UpdateEmailException([
    this.message = 'Something went wrong...',
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
        return const UpdateEmailException();
    }
  }

  final String? message;
}
