part of 'recipes_bloc.dart';

@freezed
class RecipesEvent with _$RecipesEvent {
  const factory RecipesEvent.loadMyRecipes() = _LoadMyRecipes;
}
