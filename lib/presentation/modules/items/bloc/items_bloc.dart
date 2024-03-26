import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_category_items_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:injectable/injectable.dart';

part 'items_bloc.freezed.dart';
part 'items_event.dart';
part 'items_state.dart';

@injectable
class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsBloc(this._fetchCategoryItemsUseCase) : super(const ItemsState()) {
    on<ItemsEvent>(
      (event, emit) => event.map(
        getItems: (event) => _onGetItems(event, emit),
      ),
    );
  }

  final FetchCategoryItemsUseCase _fetchCategoryItemsUseCase;

  Future<void> _onGetItems(
    _GetItems event,
    Emitter<ItemsState> emit,
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
