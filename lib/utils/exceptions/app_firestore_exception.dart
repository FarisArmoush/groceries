import 'package:groceries/config/localization/app_translations.dart';

class AppFirestoreException implements Exception {
  const AppFirestoreException([
    this.message,
  ]);

  factory AppFirestoreException.fromCode(String code) {
    switch (code) {
      case 'failed':
        return const AppFirestoreException(
          'S',
        );
      default:
        return AppFirestoreException(
          AppTranslations.errorMessages.defaultError,
        );
    }
  }

  final String? message;
}
