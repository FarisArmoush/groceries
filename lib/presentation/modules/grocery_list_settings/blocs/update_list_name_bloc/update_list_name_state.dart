part of 'update_list_name_bloc.dart';

@freezed
class UpdateListNameState with _$UpdateListNameState {
  const factory UpdateListNameState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _UpdateListNameState;
  const UpdateListNameState._();
}
