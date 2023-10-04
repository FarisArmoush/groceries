library home;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/modules/grocery_list_details/grocery_list_details.dart';
import 'package:groceries/presentation/modules/home/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/modules/home/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'views/home_view.dart';
part 'widgets/app_tip_text.dart';
part 'widgets/greeting_text.dart';
part 'widgets/grocery_lists/grocery_list_card.dart';
part 'widgets/grocery_lists/grocery_list_shimmered_card.dart';
part 'widgets/grocery_lists/grocery_lists_form.dart';
part 'widgets/grocery_lists/grocery_lists_list.dart';
part 'widgets/grocery_lists/grocery_lists_rail.dart';
part 'widgets/grocery_lists/grocery_lists_rail_header.dart';
part 'widgets/grocery_lists/grocery_lists_shimmered_rail.dart';
part 'widgets/grocery_lists/reload_grocery_lists_column.dart';
part 'widgets/grocery_lists/you_have_no_grocery_lists.dart';
part 'widgets/home_header.dart';
part 'widgets/my_tasks/my_tasks_card.dart';
part 'widgets/my_tasks/my_tasks_form.dart';
part 'widgets/my_tasks/my_tasks_list.dart';
part 'widgets/my_tasks/my_tasks_rail.dart';
part 'widgets/my_tasks/my_tasks_shimmered_card.dart';
part 'widgets/my_tasks/my_tasks_shimmered_rail.dart';
part 'widgets/my_tasks/you_have_no_tasks.dart';
part 'widgets/rail_title.dart';
