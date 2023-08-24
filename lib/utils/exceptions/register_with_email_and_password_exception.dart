import 'package:groceries/config/localization/app_translations.dart';

/// Creates a new instance of [RegisterWithEmailAndPasswordException]
/// from a Firebase error code.
///
/// The following error codes are supported:
///
/// * invalid-email: Email is not valid or badly formatted.
///
/// * user-disabled: This user has been disabled.
///   Please contact support for help.
///
/// * email-already-in-use: An account already exists for that email.
///
/// * operation-not-allowed: Operation is not allowed. Please contact support.
///
/// * weak-password: Please enter a stronger password.
class RegisterWithEmailAndPasswordException implements Exception {
  const RegisterWithEmailAndPasswordException([
    this.message = 'Something went wrong...',
  ]);

  /// Creates a new instance of [RegisterWithEmailAndPasswordException]
  /// from a Firebase error [code].
  factory RegisterWithEmailAndPasswordException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return RegisterWithEmailAndPasswordException(
          AppTranslations.errorMessages.invalidEmail,
        );
      case 'user-disabled':
        return RegisterWithEmailAndPasswordException(
          AppTranslations.errorMessages.userDisabled,
        );
      case 'email-already-in-use':
        return RegisterWithEmailAndPasswordException(
          AppTranslations.errorMessages.emailAlreadyInUse,
        );
      case 'operation-not-allowed':
        return RegisterWithEmailAndPasswordException(
          AppTranslations.errorMessages.operationNotAllowed,
        );
      case 'weak-password':
        return RegisterWithEmailAndPasswordException(
          AppTranslations.errorMessages.weakPassword,
        );
      default:
        return const RegisterWithEmailAndPasswordException();
    }
  }

  /// The error message associated with the failure.
  final String message;
}
