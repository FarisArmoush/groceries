part of 'recipes_bloc.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState({
    @Default(<RecipeEntity>[]) List<RecipeEntity> recipes,
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _RecipesState;

  const RecipesState._();
}
