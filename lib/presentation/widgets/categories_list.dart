import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    required this.categories,
    super.key,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ListTile.divideTiles(
        context: context,
        tiles: categories.map(
          (category) {
            final hasSubCategories = category.hasSubCategories ?? false;
            return ListTile(
              title: Text(category.name ?? ''),
              trailing: const NextArrowIcon(),
              onTap: () {
                if (hasSubCategories) {
                  context.pushNamed(
                    AppRoute.subCategories.name,
                    extra: category,
                  );
                } else {
                  context.pushNamed(
                    AppRoute.items.name,
                    extra: category,
                  );
                }
              },
            );
          },
        ).toList(),
      ).toList(),
    ).onlyPadding(bottom: 24);
  }
}
