import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'add_items_bloc.freezed.dart';
part 'add_items_event.dart';
part 'add_items_state.dart';

class AddItemsBloc extends Bloc<AddItemsEvent, AddItemsState> {
  AddItemsBloc(this._fetchParentCategoriesUseCase)
      : super(const AddItemsState()) {
    on<_GetParentCategories>(_onGetParentCategories);
  }

  final FetchParentCategoriesUseCase _fetchParentCategoriesUseCase;

  Future<void> _onGetParentCategories(
    _GetParentCategories event,
    Emitter<AddItemsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      final parentCategories = await _fetchParentCategoriesUseCase();
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          parentCategories: parentCategories,
        ),
      );
    } on FirebaseException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.message ?? 'Omak'),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.toString()),
        ),
      );
    }
  }
}
