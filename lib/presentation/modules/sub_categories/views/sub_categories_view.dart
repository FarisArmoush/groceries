import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/domain/entities/category/category_entity.dart';
import 'package:groceries/presentation/modules/sub_categories/bloc/sub_categories_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/categories_list.dart';
import 'package:groceries/presentation/widgets/error_state.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class SubCategoriesView extends StatefulWidget {
  const SubCategoriesView({
    required this.parentCategoryModel,
    super.key,
  });

  final CategoryEntity parentCategoryModel;

  @override
  State<SubCategoriesView> createState() => _SubCategoriesViewState();
}

class _SubCategoriesViewState extends State<SubCategoriesView> {
  @override
  void initState() {
    context.read<SubCategoriesBloc>().add(
          SubCategoriesEvent.getSubCategories(
            parentCategoryId: widget.parentCategoryModel.categoryId,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SubCategoriesBloc, SubCategoriesState>(
        buildWhen: (previous, current) =>
            previous.status != current.status ||
            previous.categories != current.categories,
        builder: (context, state) => state.status.when(
          initial: AppLoadingIndicator.new,
          loading: AppLoadingIndicator.new,
          failure: (error) => ErrorState(title: Text(error)),
          success: () {
            final categoryName = widget.parentCategoryModel.name ?? '';
            return CustomScrollView(
              slivers: [
                GroceriesAppBar(
                  largeTitle: Text(categoryName),
                  middle: Text(categoryName),
                ),
                CategoriesList(categories: state.categories).asSliver(),
              ],
            );
          },
        ),
      ),
    );
  }
}
