import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'create_recipe_bloc.freezed.dart';
part 'create_recipe_event.dart';
part 'create_recipe_state.dart';

class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc() : super(const CreateRecipeState()) {
    on<_CreateRecipe>(_onCreateRecipe);
  }

  Future<void> _onCreateRecipe(
    _CreateRecipe event,
    Emitter<CreateRecipeState> emit,
  ) async {}
}
