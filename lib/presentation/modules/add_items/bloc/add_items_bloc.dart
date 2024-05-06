import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/category/category_entity.dart';
import 'package:groceries/domain/use_cases/fetch_categories_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:injectable/injectable.dart';

part 'add_items_bloc.freezed.dart';
part 'add_items_event.dart';
part 'add_items_state.dart';

@injectable
class AddItemsBloc extends Bloc<AddItemsEvent, AddItemsState> {
  AddItemsBloc(this._fetchCategoriesUseCase) : super(const AddItemsState()) {
    on<AddItemsEvent>(
      (event, emit) => event.map(
        getParentCategories: (event) => _onGetParentCategories(event, emit),
      ),
    );
  }

  final FetchCategoriesUseCase _fetchCategoriesUseCase;

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
      final parentCategories = await _fetchCategoriesUseCase();
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          parentCategories: parentCategories,
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
