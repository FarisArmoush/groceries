class UpdateEmailException implements Exception {
  const UpdateEmailException([
    this.message = 'Something went wrong...',
  ]);

  factory UpdateEmailException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const UpdateEmailException(
          'Email is invalid or badly formatted.',
        );
      case 'requires-recent-login':
        return const UpdateEmailException(
          'Email is invalid or badly formatted.',
        );
      case 'email-already-in-use':
        return const UpdateEmailException(
          'Email is already in use by another account.',
        );
      default:
        return const UpdateEmailException();
    }
  }

  final String? message;
}
