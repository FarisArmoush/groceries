import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    required this.categories,
    super.key,
  });

  final List<CategoryModel>? categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: ListTile.divideTiles(
        context: context,
        tiles: List.generate(
          categories?.length ?? 0,
          (index) {
            final category = categories?[index];
            return ListTile(
              title: Text(category?.name ?? ''),
              trailing: const NextArrowIcon(),
              onTap: () {
                context.pushNamed(
                  AppRoute.categoryDetails.name,
                  extra: category,
                );
              },
            );
          },
        ),
      ).toList(),
    );
  }
}
