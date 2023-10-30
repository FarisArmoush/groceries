part of 'delete_list_bloc.dart';

@freezed
class DeleteListEvent with _$DeleteListEvent {
  const factory DeleteListEvent.delete({
    required String listId,
  }) = _Delete;
}
