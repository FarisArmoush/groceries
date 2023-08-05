part of '../create_list.dart';

class CreateListBloc extends Bloc<CreateListEvent, CreateListState> {
  CreateListBloc() : super(CreateListInitial()) {
    on<CreateListEvent>((event, emit) {});
  }
}
