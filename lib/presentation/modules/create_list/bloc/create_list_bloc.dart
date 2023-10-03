import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'create_list_bloc.freezed.dart';
part 'create_list_event.dart';
part 'create_list_state.dart';

class CreateListBloc extends Bloc<CreateListEvent, CreateListState> {
  CreateListBloc() : super(const CreateListState()) {
    on<_CreateList>(_onCreateListRequested);
  }
  Future<void> _onCreateListRequested(
    _CreateList event,
    Emitter<CreateListState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    await Future.delayed(
      1.seconds,
      () {
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
          ),
        );
      },
    );
  }
}
