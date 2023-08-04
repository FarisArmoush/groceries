library update_email;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';
import 'package:groceries/utils/forms/email_form.dart';

part 'cubit/update_email_cubit.dart';
part 'cubit/update_email_state.dart';
part 'views/update_email_view.dart';
part 'widgets/submit_new_email_button.dart';
part 'widgets/update_email_body_text.dart';
part 'widgets/update_email_form.dart';
part 'widgets/update_email_text_field.dart';
part 'widgets/update_email_header_text.dart';
