class SendVerificationEmailException implements Exception {
  SendVerificationEmailException([
    this.error = 'Failed to send a verification email',
  ]);

  final String error;
}
