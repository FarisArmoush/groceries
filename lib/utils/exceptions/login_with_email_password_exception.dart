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
    this.message = 'An unknown exception occurred.',
  ]);

  /// Creates a new instance of [LoginWithEmailAndPasswordException]
  ///  from a Firebase error [code].
  factory LoginWithEmailAndPasswordException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const LoginWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const LoginWithEmailAndPasswordException(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LoginWithEmailAndPasswordException(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LoginWithEmailAndPasswordException(
          'Incorrect password, please try again.',
        );
      default:
        return const LoginWithEmailAndPasswordException();
    }
  }

  /// The error message associated with the failure.
  final String message;
}
