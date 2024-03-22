import 'package:groceries/config/localization/app_translations.dart';

/// Creates a new instance of [SendPasswordResetEmailException]
/// from a Firebase error [message].
///
/// The following error codes are supported:
///
/// * invalid-email: Email is not valid or badly formatted.
///
/// * user-not-found: There is no user associated with the provided email.
///
/// * unauthorized-continue-uri: Unauthorized continue uri message,
/// contact support.
///
/// * invalid-continue-uri: Unauthorized continue uri message, contact support.
///
/// * missing-ios-bundle-id: Missing IOS bundle id, contact support.
///
/// * missing-continue-uri: Missing continue URI, contact support.
///
/// * missing-android-pkg-name: Missing android package name, contact support.
class SendPasswordResetEmailException implements Exception {
  /// Creates a new instance of [SendPasswordResetEmailException]
  /// with an optional error [message].
  const SendPasswordResetEmailException([
    this.message,
  ]);

  factory SendPasswordResetEmailException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return SendPasswordResetEmailException(
          AppTranslations.errorMessages.invalidEmail,
        );
      case 'user-not-found':
        return SendPasswordResetEmailException(
          AppTranslations.errorMessages.userNotFound,
        );

      case 'unauthorized-continue-uri':
        return SendPasswordResetEmailException(
          AppTranslations.errorMessages.unauthorizedContinueUri,
        );

      case 'invalid-continue-uri':
        return SendPasswordResetEmailException(
          AppTranslations.errorMessages.invalidContinueUri,
        );

      case 'missing-ios-bundle-id':
        return SendPasswordResetEmailException(
          AppTranslations.errorMessages.missingIosBundleId,
        );

      case 'missing-continue-uri':
        return SendPasswordResetEmailException(
          AppTranslations.errorMessages.missingContinueUri,
        );

      case 'missing-android-pkg-name':
        return SendPasswordResetEmailException(
          AppTranslations.errorMessages.missingAndroidPackageName,
        );
      default:
        return SendPasswordResetEmailException(
          AppTranslations.errorMessages.defaultErrorMessage,
        );
    }
  }

  /// The error message associated with the failure.
  final String? message;
}
