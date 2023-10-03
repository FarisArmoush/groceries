part of 'recipes_bloc.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState({
    @Default(<RecipeModel>[]) List<RecipeModel> recipes,
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _RecipesState;

  const RecipesState._();
}
