part of '../exceptions.dart';

// TODO(FarisArmoush): Translate.
class DeleteAccountException implements Exception {
  DeleteAccountException([this.errorMessage = 'Something went wrong...']);
  factory DeleteAccountException.fromCode(String code) {
    return switch (code) {
      'requires-recent-login' =>
        DeleteAccountException('Requires Recent Login'),
      _ => DeleteAccountException(),
    };
  }
  final String? errorMessage;
}
