import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/presentation/modules/category_details/bloc/category_details_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/groceries_box_list.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/categories_list.dart';
import 'package:groceries/presentation/widgets/error_state.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class CategoryDetailsView extends StatefulWidget {
  const CategoryDetailsView({
    required this.parentCategoryModel,
    super.key,
  });

  final CategoryModel parentCategoryModel;

  @override
  State<CategoryDetailsView> createState() => _CategoryDetailsViewState();
}

class _CategoryDetailsViewState extends State<CategoryDetailsView> {
  @override
  void initState() {
    context.read<CategoryDetailsBloc>()
      ..add(
        CategoryDetailsEvent.getSubCategories(
          parentCategoryId: widget.parentCategoryModel.categoryId,
        ),
      )
      ..add(
        CategoryDetailsEvent.getItems(
          categoryId: widget.parentCategoryModel.categoryId,
        ),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CategoryDetailsBloc, CategoryDetailsState>(
          buildWhen: (previous, current) =>
              previous.status != current.status ||
              previous.categories != current.categories ||
              previous.groceries != current.groceries,
          builder: (context, state) => state.status.when(
            initial: AppLoadingIndicator.new,
            loading: AppLoadingIndicator.new,
            failure: (error) => ErrorState(title: Text(error)),
            success: () {
              return CustomScrollView(
                slivers: [
                  GroceriesAppBar(
                    largeTitle: Text(widget.parentCategoryModel.name ?? ''),
                    middle: Text(widget.parentCategoryModel.name ?? ''),
                  ),
                  if (state.categories.isEmpty)
                    SliverToBoxAdapter(
                      child: GroceriesBoxList(
                        list: state.groceries,
                      ),
                    )
                  else
                    CategoriesList(
                      categories: state.categories,
                    ).asSliver(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
