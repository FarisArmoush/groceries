class SendPasswordResetEmailException implements Exception {
  const SendPasswordResetEmailException([
    this.message = 'Something went wrong...',
  ]);

  factory SendPasswordResetEmailException.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SendPasswordResetEmailException(
          'Invalid Email.',
        );
      case 'user-not-found':
        return const SendPasswordResetEmailException(
          'There is no user associated with the provided email.',
        );

      case 'unauthorized-continue-uri':
        return const SendPasswordResetEmailException(
          'unauthorized-continue-uri message',
        );

      case 'invalid-continue-uri':
        return const SendPasswordResetEmailException(
          'invalid-continue-uri message.',
        );

      case 'missing-ios-bundle-id':
        return const SendPasswordResetEmailException(
          'missing-ios-bundle-id message.',
        );

      case 'missing-continue-uri':
        return const SendPasswordResetEmailException(
          'missing-continue-uri message.',
        );

      case 'missing-android-pkg-name':
        return const SendPasswordResetEmailException(
          'missing-android-pkg-name message.',
        );
      default:
        return const SendPasswordResetEmailException();
    }
  }

  final String message;
}
