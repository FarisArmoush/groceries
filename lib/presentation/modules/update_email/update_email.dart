library update_email;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/modules/update_email/bloc/update_email_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'pages/update_email_page.dart';
part 'views/update_email_view.dart';
part 'widgets/submit_new_email_button.dart';
part 'widgets/update_email_body_text.dart';
part 'widgets/update_email_header_text.dart';
part 'widgets/update_email_text_field.dart';
