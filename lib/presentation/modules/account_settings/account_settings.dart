library account_settings;

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/account_settings/bloc/update_user_image_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';
import 'package:image_picker/image_picker.dart';

part 'views/account_settings_view.dart';
part 'widgets/edit_user_image_button.dart';
part 'widgets/is_user_verified_list_tile.dart';
part 'widgets/logout_bottom_sheet.dart';
part 'widgets/logout_button.dart';
part 'widgets/user_creation_meta_data_list_tile.dart';
part 'widgets/user_display_name_list_tile.dart';
part 'widgets/user_email_list_tile.dart';
part 'widgets/user_image.dart';
part 'widgets/your_account_is_verified_bottom_sheet.dart';
