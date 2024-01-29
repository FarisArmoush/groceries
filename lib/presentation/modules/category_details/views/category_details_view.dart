part of '../category_details.dart';

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
      body: BlocBuilder<CategoryDetailsBloc, CategoryDetailsState>(
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
                    ).onlyPadding(bottom: 32),
                  )
                else
                  SliverList.separated(
                    itemCount: state.categories.length,
                    itemBuilder: (context, index) {
                      final category = state.categories[index];
                      return ListTile(
                        title: Text(category.name ?? ''),
                        trailing: const NextArrowIcon(),
                        onTap: () {
                          context.pushNamed(
                            AppNamedRoutes.categoryDetails,
                            extra: category,
                          );
                        },
                      ).symmetricPadding(horizontal: 8);
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: context.deviceHeight * 0.01,
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
