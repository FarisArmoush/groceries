part of 'update_list_name_bloc.dart';

@freezed
class UpdateListNameEvent with _$UpdateListNameEvent {
  const factory UpdateListNameEvent.update({
    required String name,
  }) = _Update;
}
