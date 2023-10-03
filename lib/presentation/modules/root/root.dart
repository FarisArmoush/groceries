library root;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/modules/home/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/modules/home/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/modules/home/home.dart';
import 'package:groceries/presentation/modules/recipes/bloc/recipes_bloc.dart';
import 'package:groceries/presentation/modules/recipes/recipes.dart';
import 'package:groceries/presentation/modules/root/bloc/root_navigation_bloc.dart';
import 'package:groceries/presentation/modules/settings/settings.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'views/root_view.dart';
part 'widgets/root_form.dart';
