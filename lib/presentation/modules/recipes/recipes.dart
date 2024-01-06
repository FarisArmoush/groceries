library recipes;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'views/recipes_view.dart';
part 'widgets/recipe_card/recipe_card.dart';
part 'widgets/recipe_card/recipe_card_image.dart';
part 'widgets/recipe_card/recipe_card_title.dart';
part 'widgets/recipes_list.dart';
part 'widgets/shimmered_recipes_list.dart';
part 'widgets/you_have_no_recipes.dart';
part 'widgets/shimmered_recipe_card.dart';
part 'widgets/recipes_app_bar.dart';
