part of '../delete_account.dart';

sealed class DeleteAccountState extends Equatable {
  const DeleteAccountState();

  @override
  List<Object> get props => [];
}

final class DeleteAccountInitial extends DeleteAccountState {}

final class DeleteAccountLoading extends DeleteAccountState {}

final class AccountDeleteSuccess extends DeleteAccountState {}

final class AccountDeleteFailed extends DeleteAccountState {}
