library login;

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';
import 'package:groceries/utils/forms/email_form.dart';
import 'package:groceries/utils/forms/login_password_form.dart';

part 'cubit/login_cubit.dart';
part 'cubit/login_state.dart';
part 'views/login_view.dart';
part 'widgets/login_body_text.dart';
part 'widgets/login_button.dart';
part 'widgets/login_email_text_field.dart';
part 'widgets/login_forgot_password_button.dart';
part 'widgets/login_form.dart';
part 'widgets/login_header_text.dart';
part 'widgets/login_other_options_text_button.dart';
part 'widgets/login_password_text_field.dart';
