part of 'update_email_bloc.dart';

@freezed
class UpdateEmailState with _$UpdateEmailState {
  const factory UpdateEmailState({
    @Default(EmailForm.pure()) EmailForm email,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _UpdateEmailState;

  const UpdateEmailState._();
}
