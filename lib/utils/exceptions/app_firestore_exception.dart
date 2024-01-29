class AppFirestoreException implements Exception {
  const AppFirestoreException([
    this.message = 'Someting went wrong.',
  ]);

  factory AppFirestoreException.fromCode(String code) {
    switch (code) {
      case 'failed':
        return const AppFirestoreException(
          'S',
        );
      default:
        return const AppFirestoreException();
    }
  }

  final String? message;
}
