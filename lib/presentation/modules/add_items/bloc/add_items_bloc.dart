import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/base_status.dart';

part 'add_items_event.dart';
part 'add_items_state.dart';
part 'add_items_bloc.freezed.dart';

class AddItemsBloc extends Bloc<AddItemsEvent, AddItemsState> {
  AddItemsBloc(this._baseGroceriesUseCase) : super(const AddItemsState()) {
    on<_GetParentCategories>(_onGetParentCategories);
    on<_AddItemToList>(_onAddItemToList);
    on<_SetActiveCategory>(_onSetActiveCategory);
    on<_GetCategoryItems>(_onGetCategoryItems);
  }

  final BaseGroceriesUseCase _baseGroceriesUseCase;

  Future<void> _onGetParentCategories(
    _GetParentCategories event,
    Emitter<AddItemsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );
    try {
      final myCategories = await _baseGroceriesUseCase.fetchAllCategories();
      final baseGroceries = await _baseGroceriesUseCase.fetchAllBaseGroceries();
      emit(
        state.copyWith(
          status: const BaseStatus.success(),
          baseGroceries: baseGroceries,
          categories: myCategories,
        ),
      );
    } on FirebaseException catch (e) {
      emit(
        state.copyWith(
          status: BaseStatus.failure(e.message ?? 'Omak'),
          error: e.message ?? '',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BaseStatus.failure(e.toString()),
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onSetActiveCategory(
    _SetActiveCategory event,
    Emitter<AddItemsState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedCategory: event.category,
      ),
    );
  }

  Future<void> _onGetCategoryItems(
    _GetCategoryItems event,
    Emitter<AddItemsState> emit,
  ) async {}

  Future<void> _onAddItemToList(
    _AddItemToList event,
    Emitter<AddItemsState> emit,
  ) async {}
}
