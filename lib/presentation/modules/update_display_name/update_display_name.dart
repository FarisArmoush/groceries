library update_display_name;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';
import 'package:groceries/utils/forms/display_name_form.dart';

part 'views/update_display_name_view.dart';
part 'widgets/submit_new_display_name_button.dart';
part 'widgets/update_display_name_body_text.dart';
part 'widgets/update_display_name_form.dart';
part 'widgets/update_display_name_header_text.dart';
part 'widgets/update_display_name_text_field.dart';
part 'cubit/update_display_name_cubit.dart';
part 'cubit/update_display_name_state.dart';
