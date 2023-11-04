part of 'create_list_bloc.dart';

@freezed
class CreateListState with _$CreateListState {
  const factory CreateListState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<String>[]) List<String> iconsPaths,
    @Default(GroceryListNameForm.pure(''))
    GroceryListNameForm groceryListNameForm,
  }) = _CreateListState;
}
