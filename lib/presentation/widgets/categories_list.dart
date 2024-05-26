import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/domain/entities/category/category_entity.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    required this.categories,
    super.key,
  });

  final List<CategoryEntity> categories;

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
                    AppRoute.subCategories.named,
                    extra: category,
                  );
                } else {
                  context.pushNamed(
                    AppRoute.items.named,
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
