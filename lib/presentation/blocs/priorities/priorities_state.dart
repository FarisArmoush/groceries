part of 'priorities_bloc.dart';

@freezed
class PrioritiesState with _$PrioritiesState {
  const factory PrioritiesState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<PriorityEntity>[]) List<PriorityEntity> priorities,
  }) = _PrioritiesState;

  const PrioritiesState._();
}
