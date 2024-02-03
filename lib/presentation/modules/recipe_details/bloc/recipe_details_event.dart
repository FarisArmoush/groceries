part of 'recipe_details_bloc.dart';

@freezed
class RecipeDetailsEvent with _$RecipeDetailsEvent {
  const factory RecipeDetailsEvent.getDetails({
    required String? uid,
  }) = _GetDetails;

  const factory RecipeDetailsEvent.deleteRecipe({
    required String? uid,
  }) = _DeleteRecipe;
}
