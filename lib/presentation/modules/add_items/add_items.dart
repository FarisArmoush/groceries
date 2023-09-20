library add_items;

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'bloc/add_items_bloc.dart';
part 'bloc/add_items_event.dart';
part 'bloc/add_items_state.dart';
part 'views/add_items_view.dart';
part 'widgets/add_items_categories_list.dart';
part 'widgets/add_items_form.dart';
part 'widgets/add_items_text_field.dart';
part 'widgets/category_box.dart';
part 'widgets/category_box_divider.dart';
part 'widgets/grocery_item_card.dart';
part 'widgets/grocery_items_list.dart';
