part of 'recipe_details_bloc.dart';

@freezed
class RecipeDetailsState with _$RecipeDetailsState {
  const factory RecipeDetailsState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(BlocStatus.initial()) BlocStatus deleteStatus,
    RecipeDetailsModel? recipeDetailsModel,
  }) = _RecipeDetailsState;
}
