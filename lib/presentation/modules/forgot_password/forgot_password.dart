library forgot_password;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/send_password_reset_email_use_case.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/exceptions/send_password_reset_email_exception.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';
import 'package:groceries/utils/forms/email_form.dart';

part 'cubit/forgot_password_cubit.dart';
part 'cubit/forgot_password_state.dart';
part 'views/forgot_password_view.dart';
part 'views/reset_password_sent_successfully.dart';
part 'widgets/forgot_password_body_text.dart';
part 'widgets/forgot_password_email_text_field.dart';
part 'widgets/forgot_password_form.dart';
part 'widgets/forgot_password_header_text.dart';
part 'widgets/send_forgot_password_email_button.dart';
