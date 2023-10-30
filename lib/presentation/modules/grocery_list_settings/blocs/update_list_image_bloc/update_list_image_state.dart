part of 'update_list_image_bloc.dart';

@freezed
class UpdateListImageState with _$UpdateListImageState {
  const factory UpdateListImageState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _UpdateListImageState;
  const UpdateListImageState._();
}
