part of '../create_list.dart';

sealed class CreateListState extends Equatable {
  const CreateListState();

  @override
  List<Object> get props => [];
}

class CreateListInitial extends CreateListState {}

class CreateListSucceded extends CreateListState {}

class CreateListLoading extends CreateListState {}

class CreateListFailed extends CreateListState {}
