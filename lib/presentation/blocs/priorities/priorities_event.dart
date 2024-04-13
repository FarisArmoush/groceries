part of 'priorities_bloc.dart';

@freezed
class PrioritiesEvent with _$PrioritiesEvent {
  const factory PrioritiesEvent.getPriorities() = _GetPriorities;
}
