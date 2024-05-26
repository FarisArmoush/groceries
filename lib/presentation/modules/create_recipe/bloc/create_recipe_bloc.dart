import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/recipe/recipe_entity.dart';
import 'package:groceries/domain/use_cases/create_recipe_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:injectable/injectable.dart';

part 'create_recipe_bloc.freezed.dart';
part 'create_recipe_event.dart';
part 'create_recipe_state.dart';

@injectable
class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc(this._createRecipeUseCase)
      : super(const CreateRecipeState()) {
    on<CreateRecipeEvent>(
      (event, emit) => event.map(
        submit: (event) => _onSubmit(event, emit),
      ),
    );
  }

  final CreateRecipeUseCase _createRecipeUseCase;

  Future<void> _onSubmit(
    _Submit event,
    Emitter<CreateRecipeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );

    try {
      await _createRecipeUseCase(const RecipeEntity());
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
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
