import 'package:groceries/config/localization/app_translations.dart';

/// Creates a new instance of [LoginWithEmailAndPasswordException]
/// from a Firebase error [message].
///
/// The following error codes are supported:
///
/// * invalid-email: Email is not valid or badly formatted.
///
/// * user-disabled: This user has been disabled.
///   Please contact support for help.
///
/// * user-not-found: Email is not found, please create an account.
///
/// * wrong-password: Incorrect password, please try again.
class LoginWithEmailAndPasswordException implements Exception {
  /// Creates a new instance of [LoginWithEmailAndPasswordException]
  /// with an optional error [message].
  const LoginWithEmailAndPasswordException([
    this.message,
  ]);

  /// Creates a new instance of [LoginWithEmailAndPasswordException]
  ///  from a Firebase error [code].
  factory LoginWithEmailAndPasswordException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return LoginWithEmailAndPasswordException(
          AppTranslations.errorMessages.invalidEmail,
        );
      case 'user-disabled':
        return LoginWithEmailAndPasswordException(
          AppTranslations.errorMessages.userDisabled,
        );
      case 'user-not-found':
        return LoginWithEmailAndPasswordException(
          AppTranslations.errorMessages.userNotFound,
        );
      case 'wrong-password':
        return LoginWithEmailAndPasswordException(
          AppTranslations.errorMessages.wrongPassword,
        );
      default:
        return LoginWithEmailAndPasswordException(
          AppTranslations.errorMessages.defaultError,
        );
    }
  }

  /// The error message associated with the failure.
  final String? message;
}
