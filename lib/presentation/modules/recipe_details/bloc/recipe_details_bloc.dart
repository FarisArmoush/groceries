import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details_bloc.freezed.dart';
part 'recipe_details_event.dart';
part 'recipe_details_state.dart';

class RecipeDetailsBloc extends Bloc<RecipeDetailsEvent, RecipeDetailsState> {
  RecipeDetailsBloc() : super(const RecipeDetailsState()) {
    on<_DeleteRecipe>(_onDeleteRecipe);
  }
  Future<void> _onDeleteRecipe(
    _DeleteRecipe event,
    Emitter<RecipeDetailsState> emit,
  ) async {}
}
