import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/category/category_entity.dart';
import 'package:groceries/domain/use_cases/fetch_categories_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:injectable/injectable.dart';

part 'sub_categories_bloc.freezed.dart';
part 'sub_categories_event.dart';
part 'sub_categories_state.dart';

@injectable
class SubCategoriesBloc extends Bloc<SubCategoriesEvent, SubCategoriesState> {
  SubCategoriesBloc(this._fetchCategoriesUseCase)
      : super(const SubCategoriesState()) {
    on<SubCategoriesEvent>(
      (event, emit) => event.map(
        getSubCategories: (event) => _onGetSubCategories(event, emit),
      ),
    );
  }
  final FetchCategoriesUseCase _fetchCategoriesUseCase;

  Future<void> _onGetSubCategories(
    _GetSubCategories event,
    Emitter<SubCategoriesState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      final categories = await _fetchCategoriesUseCase(
        event.parentCategoryId ?? '',
      );
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          categories: categories,
        ),
      );
    } on AppNetworkException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            e.message ?? Translations.errors.defaultError,
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
