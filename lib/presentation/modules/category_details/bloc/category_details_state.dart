part of 'category_details_bloc.dart';

@freezed
class CategoryDetailsState with _$CategoryDetailsState {
  const factory CategoryDetailsState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<CategoryModel>[]) List<CategoryModel> categories,
    @Default(<GroceryModel>[]) List<GroceryModel> groceries,
    String? error,
  }) = _CategoryDetailsState;

  const CategoryDetailsState._();
}
