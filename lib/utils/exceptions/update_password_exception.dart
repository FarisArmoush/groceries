class UpdatePasswordException implements Exception {
  const UpdatePasswordException([
    this.message = 'Something went wrong..',
  ]);
  factory UpdatePasswordException.fromCode(String code) {
    switch (code) {
      case 'weak-password':
        return const UpdatePasswordException(
          'Weak Password',
        );
      case 'requires-recent-login':
        return const UpdatePasswordException(
          'Requires Recent Login',
        );
      default:
        return const UpdatePasswordException();
    }
  }
  final String? message;
}
