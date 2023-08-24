library update_display_name;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/update_display_name_use_case.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';
import 'package:groceries/utils/forms/display_name_form.dart';

part 'cubit/update_display_name_cubit.dart';
part 'cubit/update_display_name_state.dart';
part 'views/update_display_name_view.dart';
part 'widgets/submit_new_display_name_button.dart';
part 'widgets/update_display_name_body_text.dart';
part 'widgets/update_display_name_form.dart';
part 'widgets/update_display_name_header_text.dart';
part 'widgets/update_display_name_text_field.dart';
