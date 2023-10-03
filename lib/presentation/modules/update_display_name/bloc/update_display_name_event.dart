part of 'update_display_name_bloc.dart';

@freezed
class UpdateDisplayNameEvent with _$UpdateDisplayNameEvent {
  const factory UpdateDisplayNameEvent.displayNameChanged(
    String displayName,
  ) = _DisplayNameChanged;

  const factory UpdateDisplayNameEvent.updateDisplayName() = _UpdateDisplayName;
}
