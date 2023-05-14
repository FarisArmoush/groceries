import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/buttons/tile_button.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe <NAME>'),
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
          return SizedBox(height: size.height * 0.01);
        },
      ),
    );
  }
}