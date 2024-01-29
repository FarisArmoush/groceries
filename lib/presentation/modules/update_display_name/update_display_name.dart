library update_display_name;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/update_display_name/bloc/update_display_name_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

export 'package:groceries/presentation/modules/update_display_name/bloc/update_display_name_bloc.dart';

part 'views/update_display_name_view.dart';
part 'widgets/submit_new_display_name_button.dart';
part 'widgets/update_display_name_body_text.dart';
part 'widgets/update_display_name_header_text.dart';
part 'widgets/update_display_name_text_field.dart';
