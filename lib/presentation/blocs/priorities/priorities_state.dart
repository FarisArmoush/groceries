part of 'priorities_bloc.dart';

@freezed
class PrioritiesState with _$PrioritiesState {
  const factory PrioritiesState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<PriorityModel>[]) List<PriorityModel> priorities,
  }) = _PrioritiesState;

  const PrioritiesState._();
}
