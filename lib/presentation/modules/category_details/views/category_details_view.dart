part of '../category_details.dart';

class CategoryDetailsView extends StatelessWidget {
  const CategoryDetailsView({
    required this.parentCategoryModel,
    super.key,
  });

  final CategoryModel parentCategoryModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryDetailsBloc(
        context.read<FetchSubCategoriesUseCase>(),
        context.read<FetchCategoryItemsUseCase>(),
      )
        ..add(
          CategoryDetailsEvent.getSubCategories(
            parentCategoryId: parentCategoryModel.categoryId,
          ),
        )
        ..add(
          CategoryDetailsEvent.getItems(
            categoryId: parentCategoryModel.categoryId,
          ),
        ),
      child: CategoryDetailsPage(
        parentCategoryModel: parentCategoryModel,
      ),
    );
  }
}
