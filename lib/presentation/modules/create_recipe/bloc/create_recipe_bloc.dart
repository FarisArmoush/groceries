part of '../create_recipe.dart';

class CreateRecipeBloc extends Bloc<CreateRecipeEvent, CreateRecipeState> {
  CreateRecipeBloc() : super(CreateRecipeInitial()) {
    on<CreateRecipeEvent>((event, emit) {});
  }
}
