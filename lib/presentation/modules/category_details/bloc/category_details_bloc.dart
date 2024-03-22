import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_category_items_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_sub_categories_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:injectable/injectable.dart';

part 'category_details_bloc.freezed.dart';
part 'category_details_event.dart';
part 'category_details_state.dart';

@injectable
class CategoryDetailsBloc
    extends Bloc<CategoryDetailsEvent, CategoryDetailsState> {
  CategoryDetailsBloc(
    this._fetchSubCategoriesUseCase,
    this._fetchCategoryItemsUseCase,
  ) : super(const CategoryDetailsState()) {
    on<CategoryDetailsEvent>(
      (event, emit) => event.map(
        getSubCategories: (event) => _onGetSubCategories(event, emit),
        getItems: (event) => _onGetItems(event, emit),
      ),
    );
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
      final categories = await _fetchSubCategoriesUseCase(
        event.parentCategoryId ?? '',
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
          status: BlocStatus.failure(
            e.message ?? AppTranslations.errorMessages.defaultError,
          ),
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
      final groceries = await _fetchCategoryItemsUseCase(
        event.categoryId ?? '',
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
          status: BlocStatus.failure(
            e.message ?? AppTranslations.errorMessages.defaultError,
          ),
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
