part of 'create_list_bloc.dart';

@freezed
class CreateListState with _$CreateListState {
  const factory CreateListState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus formStatus,
    @Default(false) bool isValid,
    @Default(GroceryListNameForm.pure('')) GroceryListNameForm listName,
    String? icon,
    @Default(<String>[]) List<String> iconsPaths,
  }) = _CreateListState;
}
