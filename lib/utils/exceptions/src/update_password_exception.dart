part of '../exceptions.dart';

class UpdatePasswordException implements Exception {
  const UpdatePasswordException([
    this.message = 'Something went wrong..',
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
        return const UpdatePasswordException();
    }
  }
  final String? message;
}
