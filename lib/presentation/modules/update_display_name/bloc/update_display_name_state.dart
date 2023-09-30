part of 'update_display_name_bloc.dart';

@freezed
class UpdateDisplayNameState with _$UpdateDisplayNameState {
  const factory UpdateDisplayNameState({
    @Default(DisplayNameForm.pure()) DisplayNameForm displayName,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _UpdateDisplayNameState;

  const UpdateDisplayNameState._();
}
