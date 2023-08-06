part of '../create_list.dart';

sealed class CreateListEvent extends Equatable {
  const CreateListEvent();

  @override
  List<Object> get props => [];
}

class CreateListRequested extends CreateListEvent {}
