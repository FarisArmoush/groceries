part of 'verify_user_cubit.dart';

sealed class VerifyUserState extends Equatable {
  const VerifyUserState();

  @override
  List<Object> get props => [];
}

final class VerifyUserInitial extends VerifyUserState {}

final class VerificationLoading extends VerifyUserState {}

final class VerifiedSuccessfully extends VerifyUserState {}

final class VerificationFailed extends VerifyUserState {}
