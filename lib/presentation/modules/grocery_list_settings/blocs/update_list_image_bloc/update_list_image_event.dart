part of 'update_list_image_bloc.dart';

@freezed
class UpdateListImageEvent with _$UpdateListImageEvent {
  const factory UpdateListImageEvent.update({required String image}) = _Update;
}
