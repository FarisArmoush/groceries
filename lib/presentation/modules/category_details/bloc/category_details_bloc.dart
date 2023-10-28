import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'category_details_bloc.freezed.dart';
part 'category_details_event.dart';
part 'category_details_state.dart';

class CategoryDetailsBloc
    extends Bloc<CategoryDetailsEvent, CategoryDetailsState> {
  CategoryDetailsBloc(
    this._fetchSubCategoriesUseCase,
    this._fetchCategoryItemsUseCase,
  ) : super(const CategoryDetailsState()) {
    on<_GetSubCategories>(_onGetSubCategories);
    on<_GetItems>(_onGetItems);
  }

  final FetchSubCategoriesUseCase _fetchSubCategoriesUseCase;
  final FetchCategoryItemsUseCase _fetchCategoryItemsUseCase;

  Future<void> _onGetSubCategories(
    _GetSubCategories event,
    Emitter<CategoryDetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      final categories = await _fetchSubCategoriesUseCase.call(
        event.parentCategoryId!,
      );
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          categories: categories,
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
          status: BlocStatus.failure(e.toString()),
        ),
      );
    }
  }

  Future<void> _onGetItems(
    _GetItems event,
    Emitter<CategoryDetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      final groceries = await _fetchCategoryItemsUseCase.call(
        event.categoryId!,
      );
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          groceries: groceries,
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
          status: BlocStatus.failure(e.toString()),
        ),
      );
    }
  }
}
