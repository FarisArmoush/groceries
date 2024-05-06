import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/recipe_details/bloc/recipe_details_bloc.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_details_app_bar.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_details_list_header.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_items_list.dart';
import 'package:groceries/presentation/modules/recipe_details/widgets/recipe_steps_list.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/presentation/widgets/error_state.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/hard_coded_extension.dart';

class RecipeDetailsView extends StatefulWidget {
  const RecipeDetailsView({required this.uid, super.key});

  final String? uid;

  @override
  State<RecipeDetailsView> createState() => _RecipeDetailsViewState();
}

class _RecipeDetailsViewState extends State<RecipeDetailsView> {
  @override
  void initState() {
    context.read<RecipeDetailsBloc>().add(
          RecipeDetailsEvent.getDetails(uid: widget.uid),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeDetailsBloc, RecipeDetailsState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) => state.status.when(
        initial: AppLoadingIndicator.new,
        loading: AppLoadingIndicator.new,
        failure: (error) => ErrorState(title: Text(error)),
        success: () {
          final recipeModel = state.recipe;
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                RecipeDetailsAppBar(recipeModel: recipeModel),
                SliverPadding(
                  padding: AppPaddings.scaffold(context),
                  sliver: SliverList.list(
                    children: [
                      CachedImage(
                        imageUrl: recipeModel?.imageUrl ?? '',
                        height: context.deviceHeight * 0.3,
                        width: context.deviceWidth,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadiusDirectional.circular(12),
                      ),
                      SizedBox(
                        height: context.deviceHeight * 0.05,
                      ),
                      RecipeDetailsListHeader('Ingredients'.hardCoded),
                      SizedBox(
                        height: context.deviceHeight * 0.02,
                      ),
                      RecipeItemsList(recipeModel: recipeModel),
                      Divider(
                        height: context.deviceHeight * 0.075,
                      ),
                      RecipeDetailsListHeader('Instructions'.hardCoded),
                      SizedBox(
                        height: context.deviceHeight * 0.02,
                      ),
                      RecipeStepsList(recipeModel: recipeModel),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
