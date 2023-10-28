part of 'category_details_bloc.dart';

@freezed
class CategoryDetailsEvent with _$CategoryDetailsEvent {
  const factory CategoryDetailsEvent.getSubCategories({
    required String? parentCategoryId,
  }) = _GetSubCategories;

  const factory CategoryDetailsEvent.getItems({
    required String? categoryId,
  }) = _GetItems;
}
