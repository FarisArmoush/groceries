library grocery_list_settings;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/bloc/grocery_list_settings_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'views/grocery_list_settings_view.dart';
part 'widgets/delete_grocery_list_button.dart';
part 'widgets/edit_list_image.dart';
part 'widgets/grocery_list_form.dart';
part 'widgets/grocery_list_members.dart';
part 'widgets/grocery_list_name_text_field.dart';
part 'widgets/member_card.dart';
part 'widgets/save_grocery_list_changes_button.dart';
