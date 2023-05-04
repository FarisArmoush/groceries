/// Creates a new instance of [LoginWithEmailAndPasswordFailure]
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
class LoginWithEmailAndPasswordFailure implements Exception {
  /// Creates a new instance of [LoginWithEmailAndPasswordFailure]
  /// with an optional error [message].
  const LoginWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Creates a new instance of [LoginWithEmailAndPasswordFailure]
  ///  from a Firebase error [code].
  factory LoginWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const LoginWithEmailAndPasswordFailure(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const LoginWithEmailAndPasswordFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LoginWithEmailAndPasswordFailure(
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return const LoginWithEmailAndPasswordFailure(
          'Incorrect password, please try again.',
        );
      default:
        return const LoginWithEmailAndPasswordFailure();
    }
  }

  /// The error message associated with the failure.
  final String message;
}
