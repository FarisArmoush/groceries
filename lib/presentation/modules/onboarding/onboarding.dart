library onborading;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/data/models/onboarding_page_model/onboarding_page_model.dart';
import 'package:groceries/presentation/modules/onboarding/bloc/onboarding_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'pages/onboarding_page.dart';
part 'views/onboarding_view.dart';
part 'widgets/leave_onboarding_button.dart';
part 'widgets/onboarding_next_page_button.dart';
part 'widgets/onboarding_page_base.dart';
