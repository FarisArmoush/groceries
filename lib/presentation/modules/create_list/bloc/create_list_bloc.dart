import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/forms/app_forms.dart';

part 'create_list_bloc.freezed.dart';
part 'create_list_event.dart';
part 'create_list_state.dart';

class CreateListBloc extends Bloc<CreateListEvent, CreateListState> {
  CreateListBloc(this._createListUseCase) : super(const CreateListState()) {
    on<_CreateList>(_onCreateList);
    on<_GetIcons>(_onGetIcons);
    on<_IconChanged>(_onIconChanged);
    on<_NameChanged>(_onNameChanged);
  }

  final CreateListUseCase _createListUseCase;

  Future<void> _onCreateList(
    _CreateList event,
    Emitter<CreateListState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      await _createListUseCase(event.groceryListModel);
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
        ),
      );
    } on FirebaseException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.message!),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            e.toString(),
          ),
        ),
      );
    }
  }

  void _onGetIcons(
    _GetIcons event,
    Emitter<CreateListState> emit,
  ) {
    // TODO: implement event handler
  }

  void _onIconChanged(
    _IconChanged event,
    Emitter<CreateListState> emit,
  ) {
    // TODO: implement event handler
  }

  void _onNameChanged(
    _NameChanged event,
    Emitter<CreateListState> emit,
  ) {
    // TODO: implement event handler
  }
}
