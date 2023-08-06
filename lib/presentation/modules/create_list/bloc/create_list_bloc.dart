part of '../create_list.dart';

class CreateListBloc extends Bloc<CreateListEvent, CreateListState> {
  CreateListBloc() : super(CreateListInitial()) {
    on<CreateListRequested>(_onCreateListRequested);
  }
  Future<void> _onCreateListRequested(
    CreateListRequested event,
    Emitter<CreateListState> emit,
  ) async {
    emit(CreateListLoading());
    await Future.delayed(
      1.seconds,
      () {
        emit(CreateListSucceded());
      },
    );
  }
}
