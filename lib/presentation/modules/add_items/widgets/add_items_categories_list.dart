part of '../add_items.dart';

class AddItemsCategoriesList extends StatelessWidget {
  const AddItemsCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddItemsBloc, AddItemsState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Column(
          children: ListTile.divideTiles(
            context: context,
            tiles: state.parentCategories.map(
              (category) => ListTile(
                title: Text(category.name ?? ''),
                onTap: () => context.pushNamed(
                  AppNamedRoutes.categoryDetails,
                  extra: category,
                ),
              ),
            ),
          ).toList(),
        ).symmetricPadding(horizontal: 4);
      },
    );
  }
}
