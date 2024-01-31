part of 'remove_member_from_list_bloc.dart';

@freezed
class RemoveMemberFromListEvent with _$RemoveMemberFromListEvent {
  const factory RemoveMemberFromListEvent.remove({
    required String? memberUid,
  }) = _Remove;
}
