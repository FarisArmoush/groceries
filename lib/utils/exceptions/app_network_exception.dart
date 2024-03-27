import 'package:groceries/config/localization/app_translations.dart';

class AppNetworkException implements Exception {
  const AppNetworkException([this.message]);

  factory AppNetworkException.fromCode(String? code) {
    final errors = AppTranslations.errorMessages;
    switch (code) {
      case 'invalid-email':
        return AppNetworkException(errors.invalidEmail);

      case 'user-disabled':
        return AppNetworkException(errors.userDisabled);

      case 'user-not-found':
        return AppNetworkException(errors.userNotFound);

      case 'requires-recent-login':
        return AppNetworkException(errors.requiresRecentLogin);

      case 'wrong-password':
        return AppNetworkException(errors.wrongPassword);

      case 'email-already-in-use':
        return AppNetworkException(errors.emailAlreadyInUse);

      case 'operation-not-allowed':
        return AppNetworkException(errors.operationNotAllowed);

      case 'weak-password':
        return AppNetworkException(errors.weakPassword);

      case 'unauthorized-continue-uri':
        return AppNetworkException(errors.unauthorizedContinueUri);

      case 'invalid-continue-uri':
        return AppNetworkException(errors.invalidContinueUri);

      case 'missing-ios-bundle-id':
        return AppNetworkException(errors.missingIosBundleId);

      case 'missing-continue-uri':
        return AppNetworkException(errors.missingContinueUri);

      case 'missing-android-pkg-name':
        return AppNetworkException(errors.missingAndroidPackageName);

      default:
        return AppNetworkException(errors.defaultError);
    }
  }

  final String? message;
}
