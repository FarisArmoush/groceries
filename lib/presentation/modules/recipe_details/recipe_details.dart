library recipe_details;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/presentation/modules/recipe_details/bloc/recipe_details_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'views/recipe_details_view.dart';
part 'widgets/recipe_details_form.dart';
part 'widgets/recipe_details_list_header.dart';
part 'widgets/recipe_items_list.dart';
part 'widgets/recipe_steps_list.dart';
