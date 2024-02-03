import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/recipes_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:injectable/injectable.dart';

part 'recipes_bloc.freezed.dart';
part 'recipes_event.dart';
part 'recipes_state.dart';

@injectable
class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  RecipesBloc(this._recipesUseCase) : super(const RecipesState()) {
    on<_LoadMyRecipes>(_onLoadMyRecipes);
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
    final recipes = await _recipesUseCase.fetchRecipes();
    await Future.delayed(
      500.milliseconds,
      () => emit(
        state.copyWith(
          status: const BlocStatus.success(),
          recipes: recipes,
        ),
      ),
    );
  }
}
