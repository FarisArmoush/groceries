library root;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/fetch_user_data_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/grocery_lists_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/my_tasks_use_case.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/recipes_use_case.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/modules/home/home.dart';
import 'package:groceries/presentation/modules/recipes/recipes.dart';
import 'package:groceries/presentation/modules/root/cubit/root_navigation_cubit.dart';
import 'package:groceries/presentation/modules/settings/settings.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'views/root_view.dart';
part 'widgets/root_form.dart';
