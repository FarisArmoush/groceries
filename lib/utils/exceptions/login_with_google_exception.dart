// ignore_for_file: lines_longer_than_80_chars

/// Creates a [LoginWithGoogleException] instance with a message based on the error code.
/// The following error codes are supported:
///
/// * account-exists-with-different-credential: Account exists with different credentials.
///
/// * invalid-credential: The credential received is malformed or has expired.
///
/// * operation-not-allowed: Operation is not allowed. Please contact support.
///
/// * user-disabled: This user has been disabled. Please contact support for help.
///
/// * user-not-found: Email is not found, please create an account.
///
/// * wrong-password: Incorrect password, please try again.
///
/// * invalid-verification-code: The credential verification code received is invalid.
///
/// * invalid-verification-id: The credential verification ID received is invalid.
class LoginWithGoogleException implements Exception {
  /// Creates a new instance of [LoginWithGoogleException]
  /// with an optional error [message].
  const LoginWithGoogleException([
    this.message = 'An unknown exception occurred.',
  ]);

  factory LoginWithGoogleException.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return const LoginWithGoogleException(
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return const LoginWithGoogleException(
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return const LoginWithGoogleException(
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return const LoginWithGoogleException(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LoginWithGoogleException(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LoginWithGoogleException(
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return const LoginWithGoogleException(
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return const LoginWithGoogleException(
          'The credential verification ID received is invalid.',
        );
      default:
        return const LoginWithGoogleException();
    }
  }

  /// The error message associated with the failure.
  final String message;
}
