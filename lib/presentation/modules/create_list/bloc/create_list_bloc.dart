import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/create_list_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/forms/grocery_list_name_form.dart';

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
          status: BlocStatus.failure(e.message ?? ''),
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

  void _onIconChanged(
    _IconChanged event,
    Emitter<CreateListState> emit,
  ) {
    emit(
      state.copyWith(
        icon: event.icon,
      ),
    );
  }

  void _onNameChanged(
    _NameChanged event,
    Emitter<CreateListState> emit,
  ) {
    final name = GroceryListNameForm.dirty(event.name);
    emit(
      state.copyWith(
        listName: name,
        isValid: Formz.validate([name]),
      ),
    );
  }

  void _onGetIcons(
    _GetIcons event,
    Emitter<CreateListState> emit,
  ) {
    final icons = [
      Assets.svg.icBeef.path,
      Assets.svg.icBook.path,
      Assets.svg.icBriefcase.path,
      Assets.svg.icCake.path,
      Assets.svg.icCar.path,
      Assets.svg.icChurch.path,
      Assets.svg.icDumbbell.path,
      Assets.svg.icHammer.path,
      Assets.svg.icPalmTree.path,
      Assets.svg.icPaw.path,
      Assets.svg.icScissors.path,
      Assets.svg.icStore.path,
      Assets.svg.icBaby.path,
    ];
    emit(
      state.copyWith(
        iconsPaths: icons,
        icon: icons.first,
      ),
    );
  }
}
