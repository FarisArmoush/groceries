part of 'remove_member_from_list_bloc.dart';

@freezed
class RemoveMemberFromListState with _$RemoveMemberFromListState {
  const factory RemoveMemberFromListState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _RemoveMemberFromListState;
  const RemoveMemberFromListState._();
}
