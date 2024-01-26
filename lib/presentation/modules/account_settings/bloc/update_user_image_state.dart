part of 'update_user_image_bloc.dart';

@freezed
class UpdateUserImageState with _$UpdateUserImageState {
  const factory UpdateUserImageState({
    File? imageFile,
  }) = _UpdateUserImageState;

  const UpdateUserImageState._();
}
