part of 'create_recipe_bloc.dart';

@freezed
class CreateRecipeState with _$CreateRecipeState {
  const factory CreateRecipeState({
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _CreateRecipeState;

  const CreateRecipeState._();
}
