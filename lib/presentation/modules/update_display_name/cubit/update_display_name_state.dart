part of 'update_display_name_cubit.dart';

final class UpdateDisplayNameState extends Equatable {
  const UpdateDisplayNameState({
    this.name = const DisplayNameForm.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorMessage,
    this.isValid = false,
  });

  final DisplayNameForm name;
  final FormzSubmissionStatus status;
  final String? errorMessage;
  final bool isValid;
  @override
  List<Object> get props => [name, status, isValid];

  UpdateDisplayNameState copyWith({
    DisplayNameForm? name,
    FormzSubmissionStatus? status,
    String? errorMessage,
    bool? isValid,
  }) {
    return UpdateDisplayNameState(
      name: name ?? this.name,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      isValid: isValid ?? this.isValid,
    );
  }
}
