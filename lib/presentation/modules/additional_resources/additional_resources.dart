library additional_resources;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_cubit.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'cubit/send_crash_reports_cubit.dart';
part 'views/additional_resources_view.dart';
part 'widgets/additional_resources_title.dart';
part 'widgets/app_version_list_tile.dart';
part 'widgets/legal_list_tile.dart';
part 'widgets/send_crash_reports_switch_tile.dart';
