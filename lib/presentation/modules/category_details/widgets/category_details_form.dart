part of '../category_details.dart';

class CategoryDetailsForm extends StatelessWidget {
  const CategoryDetailsForm({required this.parentCategoryModel, super.key});

  final CategoryModel parentCategoryModel;

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
          failure: Text.new,
          success: () {
            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar.medium(
                  title: Text(parentCategoryModel.name!),
                ),
                if (state.categories.isEmpty)
                  SliverToBoxAdapter(
                    child: GroceriesBoxList(
                      list: state.groceries,
                    ).directionalOnlyPadding(bottom: 32),
                  )
                else
                  SliverList.separated(
                    itemCount: state.categories.length,
                    itemBuilder: (context, index) {
                      final category = state.categories[index];
                      return ListTile(
                        title: Text(category.name!),
                        trailing: const NextArrowIcon(),
                        onTap: () {
                          context.pushNamed(
                            AppNamedRoutes.categoryDetails,
                            extra: category,
                          );
                        },
                      ).symmetricPadding(horizontal: 8);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: context.deviceHeight * 0.01,
                      );
                    },
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}