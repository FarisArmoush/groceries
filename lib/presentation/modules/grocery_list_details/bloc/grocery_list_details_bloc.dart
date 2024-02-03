import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_details_model/grocery_list_details_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/add_item_to_list_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/clear_grocery_list_items_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_grocery_list_details_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/remove_item_from_list_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:injectable/injectable.dart';

part 'grocery_list_details_bloc.freezed.dart';
part 'grocery_list_details_event.dart';
part 'grocery_list_details_state.dart';

@injectable
class GroceryListDetailsBloc
    extends Bloc<GroceryListDetailsEvent, GroceryListDetailsState> {
  GroceryListDetailsBloc({
    required this.addItemToListUseCase,
    required this.removeItemFromListUseCase,
    required this.fetchGroceryListDetailsUseCase,
    required this.clearGroceryListItemsUseCase,
  }) : super(const GroceryListDetailsState()) {
    on<GroceryListDetailsEvent>(
      (event, emit) => event.map(
        getDetails: (event) => _onGetDetails(event, emit),
        addItem: (event) => _onAddItem(event, emit),
        removeItem: (event) => _onRemoveItem(event, emit),
        setToInitial: (event) => _onSetToInitial(event, emit),
        clear: (event) => _onClear(event, emit),
      ),
    );
  }
  final AddItemToListUseCase addItemToListUseCase;
  final RemoveItemFromListUseCase removeItemFromListUseCase;
  final FetchGroceryListDetailsUseCase fetchGroceryListDetailsUseCase;
  final ClearGroceryListItemsUseCase clearGroceryListItemsUseCase;

  Future<void> _onGetDetails(
    _GetDetails event,
    Emitter<GroceryListDetailsState> emit,
  ) async {
    emit(state.copyWith(status: const BlocStatus.loading()));
    try {
      final list = await fetchGroceryListDetailsUseCase(event.uid);
      emit(
        state.copyWith(
          groceryListDetailsModel: list,
          status: const BlocStatus.success(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: BlocStatus.failure(e.toString())));
    }
  }

  Future<void> _onSetToInitial(
    _SetToInitial event,
    Emitter<GroceryListDetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        groceryListDetailsModel: null,
        status: const BlocStatus.initial(),
        addItemStatus: const BlocStatus.initial(),
        removeItemStatus: const BlocStatus.initial(),
      ),
    );
  }

  Future<void> _onAddItem(
    _AddItem event,
    Emitter<GroceryListDetailsState> emit,
  ) async {
    emit(state.copyWith(addItemStatus: const BlocStatus.loading()));

    try {
      await addItemToListUseCase(event.itemUid);
      emit(
        state.copyWith(
          addItemStatus: const BlocStatus.success(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(addItemStatus: BlocStatus.failure(e.toString())));
    } finally {
      await Future.delayed(
        200.milliseconds,
        () => emit(state.copyWith(addItemStatus: const BlocStatus.loading())),
      );
    }
  }

  Future<void> _onRemoveItem(
    _RemoveItem event,
    Emitter<GroceryListDetailsState> emit,
  ) async {
    emit(state.copyWith(removeItemStatus: const BlocStatus.loading()));
    try {
      await removeItemFromListUseCase(event.itemUid);
      emit(
        state.copyWith(
          removeItemStatus: const BlocStatus.success(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(removeItemStatus: BlocStatus.failure(e.toString())));
    } finally {
      await Future.delayed(
        200.milliseconds,
        () =>
            emit(state.copyWith(removeItemStatus: const BlocStatus.loading())),
      );
    }
  }

  Future<void> _onClear(
    _Clear event,
    Emitter<GroceryListDetailsState> emit,
  ) async {
    emit(state.copyWith(clearStatus: const BlocStatus.loading()));
    try {
      await clearGroceryListItemsUseCase(event.uid);
      emit(
        state.copyWith(
          clearStatus: const BlocStatus.success(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(clearStatus: BlocStatus.failure(e.toString())));
    } finally {
      await Future.delayed(
        200.milliseconds,
        () => emit(state.copyWith(clearStatus: const BlocStatus.loading())),
      );
    }
  }
}
