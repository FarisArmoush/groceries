part of 'update_display_name_cubit.dart';

class UpdateDisplayNameState extends Equatable {
  const UpdateDisplayNameState({
    this.name = const DisplayNameForm.pure(),
    this.status = FormzStatus.pure,
    this.errorMessage,
  });

  final DisplayNameForm name;
  final FormzStatus status;
  final String? errorMessage;
  @override
  List<Object> get props => [name, status];

  UpdateDisplayNameState copyWith({
    DisplayNameForm? name,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return UpdateDisplayNameState(
      name: name ?? this.name,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
