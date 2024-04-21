import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/use_cases/create_list_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/forms/grocery_list_name_form.dart';
import 'package:injectable/injectable.dart';

part 'create_list_bloc.freezed.dart';
part 'create_list_event.dart';
part 'create_list_state.dart';

@injectable
class CreateListBloc extends Bloc<CreateListEvent, CreateListState> {
  CreateListBloc(this._createListUseCase) : super(const CreateListState()) {
    on<CreateListEvent>(
      (event, emit) => event.map(
        submit: (event) => _onSubmit(event, emit),
        nameChanged: (event) => _onNameChanged(event, emit),
        iconChanged: (event) => _onIconChanged(event, emit),
        getIcons: (event) => _onGetIcons(event, emit),
      ),
    );
  }

  final CreateListUseCase _createListUseCase;

  Future<void> _onSubmit(
    _Submit event,
    Emitter<CreateListState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      await _createListUseCase(
        GroceryListModel(
          creationDate: DateTime.now(),
          imageUrl: state.icon,
          name: state.listName.value,
        ),
      );
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
        ),
      );
    } on AppNetworkException catch (e) {
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
      Assets.icons.house.path,
      Assets.icons.beef.path,
      Assets.icons.book.path,
      Assets.icons.briefCase.path,
      Assets.icons.cake.path,
      Assets.icons.car.path,
      Assets.icons.church.path,
      Assets.icons.dumbbell.path,
      Assets.icons.hammer.path,
      Assets.icons.palmTree.path,
      Assets.icons.paw.path,
      Assets.icons.scissors.path,
      Assets.icons.store.path,
      Assets.icons.baby.path,
    ];
    emit(
      state.copyWith(
        iconsPaths: icons,
        icon: icons.first,
      ),
    );
  }
}
