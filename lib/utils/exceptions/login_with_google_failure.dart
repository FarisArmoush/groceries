// ignore_for_file: lines_longer_than_80_chars

/// Creates a [LoginWithGoogleFailure] instance with a message based on the error code.
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
class LoginWithGoogleFailure implements Exception {
  /// Creates a new instance of [LoginWithGoogleFailure]
  /// with an optional error [message].
  const LoginWithGoogleFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  factory LoginWithGoogleFailure.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        return const LoginWithGoogleFailure(
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return const LoginWithGoogleFailure(
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return const LoginWithGoogleFailure(
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return const LoginWithGoogleFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LoginWithGoogleFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LoginWithGoogleFailure(
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return const LoginWithGoogleFailure(
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return const LoginWithGoogleFailure(
          'The credential verification ID received is invalid.',
        );
      default:
        return const LoginWithGoogleFailure();
    }
  }

  /// The error message associated with the failure.
  final String message;
}
