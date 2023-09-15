library register;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/exceptions/exceptions.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';
import 'package:groceries/utils/forms/app_forms.dart';
import 'package:groceries/utils/params/register_param/register_param.dart';

part 'cubit/register_cubit.dart';
part 'cubit/register_state.dart';
part 'views/register_view.dart';
part 'widgets/register_body_text.dart';
part 'widgets/register_button.dart';
part 'widgets/register_confirm_password_text_field.dart';
part 'widgets/register_display_name_text_field.dart';
part 'widgets/register_email_text_field.dart';
part 'widgets/register_form.dart';
part 'widgets/register_header_text.dart';
part 'widgets/register_other_option_text_button.dart';
part 'widgets/register_password_text_field.dart';
