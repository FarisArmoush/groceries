part of 'delete_list_bloc.dart';

@freezed
class DeleteListState with _$DeleteListState {
  const factory DeleteListState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _DeleteListState;
  const DeleteListState._();
}
