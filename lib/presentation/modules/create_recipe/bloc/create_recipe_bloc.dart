import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'create_recipe_bloc.freezed.dart';
part 'create_recipe_event.dart';
part 'create_recipe_state.dart';

class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc(this._createRecipeUseCase)
      : super(const CreateRecipeState()) {
    on<_CreateRecipe>(_onCreateRecipe);
  }

  final CreateRecipeUseCase _createRecipeUseCase;

  Future<void> _onCreateRecipe(
    _CreateRecipe event,
    Emitter<CreateRecipeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );

    try {
      await _createRecipeUseCase(event.recipeModel);
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
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
