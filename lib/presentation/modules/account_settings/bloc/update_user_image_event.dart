part of 'update_user_image_bloc.dart';

@freezed
class UpdateUserImageEvent with _$UpdateUserImageEvent {
  const factory UpdateUserImageEvent.pickImage({
    required ImageSource source,
  }) = _PickImage;
}
