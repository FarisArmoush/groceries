import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/create_recipe_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
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
        createRecipe: (event) => _onCreateRecipe(event, emit),
      ),
    );
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
