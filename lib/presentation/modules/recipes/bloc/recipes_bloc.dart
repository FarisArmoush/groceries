import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/entities/recipe/recipe_entity.dart';
import 'package:groceries/domain/use_cases/recipes_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:injectable/injectable.dart';

part 'recipes_bloc.freezed.dart';
part 'recipes_event.dart';
part 'recipes_state.dart';

@injectable
class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  RecipesBloc(this._recipesUseCase) : super(const RecipesState()) {
    on<RecipesEvent>(
      (event, emit) => event.map(
        loadMyRecipes: (event) => _onLoadMyRecipes(event, emit),
      ),
    );
  }
  final RecipesUseCase _recipesUseCase;

  Future<void> _onLoadMyRecipes(
    _LoadMyRecipes event,
    Emitter<RecipesState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    final recipes = await _recipesUseCase();
    await Future.delayed(
      const Duration(milliseconds: 500),
      () => emit(
        state.copyWith(
          status: const BlocStatus.success(),
          recipes: recipes,
        ),
      ),
    );
  }
}
