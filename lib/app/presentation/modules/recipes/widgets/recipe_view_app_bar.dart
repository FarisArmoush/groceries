import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/recipes/widgets/filled_back_button.dart';
import 'package:groceries/app/presentation/widgets/cached_image.dart';

class RecipeViewAppBar extends StatelessWidget {
  const RecipeViewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SliverAppBar.large(
      leading: const FilledBackButton(),
      expandedHeight: size.height * 0.3,
      pinned: false,
      flexibleSpace: const CachedImage(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        imageUrl:
            'https://www.cnet.com/a/img/resize/69256d2623afcbaa911f08edc45fb2d3f6a8e172/hub/2023/02/03/afedd3ee-671d-4189-bf39-4f312248fb27/gettyimages-1042132904.jpg?auto=webp&fit=crop&height=675&width=1200',
        boxShape: BoxShape.rectangle,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
