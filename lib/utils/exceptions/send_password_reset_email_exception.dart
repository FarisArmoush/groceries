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
    this.message = 'Something went wrong...',
  ]);

  factory SendPasswordResetEmailException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SendPasswordResetEmailException(
          'Email is not valid or badly formatted.',
        );
      case 'user-not-found':
        return const SendPasswordResetEmailException(
          'There is no user associated with the provided email.',
        );

      case 'unauthorized-continue-uri':
        return const SendPasswordResetEmailException(
          'Unauthorized continue uri message, contact support.',
        );

      case 'invalid-continue-uri':
        return const SendPasswordResetEmailException(
          'Invalid continue uri message, contact support.',
        );

      case 'missing-ios-bundle-id':
        return const SendPasswordResetEmailException(
          'Missing IOS bundle id, contact support.',
        );

      case 'missing-continue-uri':
        return const SendPasswordResetEmailException(
          'Missing continue URI, contact support.',
        );

      case 'missing-android-pkg-name':
        return const SendPasswordResetEmailException(
          'Missing android package name, contact support.',
        );
      default:
        return const SendPasswordResetEmailException();
    }
  }

  /// The error message associated with the failure.
  final String message;
}
