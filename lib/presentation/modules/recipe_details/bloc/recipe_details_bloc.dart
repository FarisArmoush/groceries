import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/delete_recipe_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_recipe_details_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:injectable/injectable.dart';

part 'recipe_details_bloc.freezed.dart';
part 'recipe_details_event.dart';
part 'recipe_details_state.dart';

@injectable
class RecipeDetailsBloc extends Bloc<RecipeDetailsEvent, RecipeDetailsState> {
  RecipeDetailsBloc({
    required this.deleteRecipeUseCase,
    required this.fetchRecipeDetailsUseCase,
  }) : super(const RecipeDetailsState()) {
    on<RecipeDetailsEvent>(
      (event, emit) => event.map(
        deleteRecipe: (event) => _onDeleteRecipe(event, emit),
        getDetails: (event) => _onGetDetails(event, emit),
      ),
    );
  }
  final DeleteRecipeUseCase deleteRecipeUseCase;
  final FetchRecipeDetailsUseCase fetchRecipeDetailsUseCase;
  Future<void> _onDeleteRecipe(
    _DeleteRecipe event,
    Emitter<RecipeDetailsState> emit,
  ) async {}

  Future<void> _onGetDetails(
    _GetDetails event,
    Emitter<RecipeDetailsState> emit,
  ) async {
    emit(state.copyWith(status: const BlocStatus.loading()));
    try {
      final recipeDetailsModel = await fetchRecipeDetailsUseCase(event.uid);
      emit(
        state.copyWith(
          recipeDetailsModel: recipeDetailsModel,
          status: const BlocStatus.success(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: BlocStatus.failure(e.toString())));
    }
  }
}
