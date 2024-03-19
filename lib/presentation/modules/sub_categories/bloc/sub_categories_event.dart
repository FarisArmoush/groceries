part of 'sub_categories_bloc.dart';

@freezed
class SubCategoriesEvent with _$SubCategoriesEvent {
  const factory SubCategoriesEvent.getSubCategories({
    required String? parentCategoryId,
  }) = _GetSubCategories;
}
