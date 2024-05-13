part of 'sub_categories_bloc.dart';

@freezed
class SubCategoriesState with _$SubCategoriesState {
  const factory SubCategoriesState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<CategoryEntity>[]) List<CategoryEntity> categories,
  }) = _SubCategoriesState;

  const SubCategoriesState._();
}
