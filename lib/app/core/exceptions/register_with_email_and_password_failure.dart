// ignore_for_file: comment_references
/// Creates a new instance of [RegisterWithEmailAndPasswordFailure]
/// from a Firebase error [code].
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
class RegisterWithEmailAndPasswordFailure implements Exception {
  const RegisterWithEmailAndPasswordFailure([
    this.message = 'Something went wrong...',
  ]);

  /// Creates a new instance of [RegisterWithEmailAndPasswordFailure]
  /// from a Firebase error [code].
  factory RegisterWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const RegisterWithEmailAndPasswordFailure(
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const RegisterWithEmailAndPasswordFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return const RegisterWithEmailAndPasswordFailure(
          'An account already exists for that email.',
        );
      case 'operation-not-allowed':
        return const RegisterWithEmailAndPasswordFailure(
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return const RegisterWithEmailAndPasswordFailure(
          'Please enter a stronger password.',
        );
      default:
        return const RegisterWithEmailAndPasswordFailure();
    }
  }

  /// The error message associated with the failure.
  final String message;
}
