part of 'logout_bloc.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _LogoutState;
}
