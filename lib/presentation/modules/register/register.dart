library register;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

export 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';

part 'views/register_view.dart';
part 'widgets/register_body_text.dart';
part 'widgets/register_button.dart';
part 'widgets/register_confirm_password_text_field.dart';
part 'widgets/register_display_name_text_field.dart';
part 'widgets/register_email_text_field.dart';
part 'widgets/register_header_text.dart';
part 'widgets/register_password_text_field.dart';
