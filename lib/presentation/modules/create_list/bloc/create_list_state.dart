part of 'create_list_bloc.dart';

@freezed
class CreateListState with _$CreateListState {
  const factory CreateListState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _CreateListState;
}
