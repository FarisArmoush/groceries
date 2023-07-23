import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/buttons/tile_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class RecipeDetailsView extends StatelessWidget {
  const RecipeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInAnimation(
          child: const Text('Recipe <NAME>'),
        ),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return TileButton(
            onTap: () {},
            title: '<ITEM>',
            icon: Assets.svg.icArchive.path,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: context.deviceHeight * 0.01);
        },
      ),
    );
  }
}
