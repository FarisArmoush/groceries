library category_details;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/presentation/modules/category_details/bloc/category_details_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_details/grocery_list_details.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

export 'package:groceries/presentation/modules/category_details/bloc/category_details_bloc.dart';

part 'views/category_details_view.dart';
