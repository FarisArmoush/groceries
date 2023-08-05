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
        return const RegisterWithEmailAndPasswordException(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const RegisterWithEmailAndPasswordException(
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return const RegisterWithEmailAndPasswordException(
          'An account already exists for that email.',
        );
      case 'operation-not-allowed':
        return const RegisterWithEmailAndPasswordException(
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return const RegisterWithEmailAndPasswordException(
          'Please enter a stronger password.',
        );
      default:
        return const RegisterWithEmailAndPasswordException();
    }
  }

  /// The error message associated with the failure.
  final String message;
}
