library forgot_password;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';

export 'package:groceries/presentation/modules/forgot_password/bloc/forgot_password_bloc.dart';

part 'views/forgot_password_view.dart';
part 'views/reset_password_sent_successfully.dart';
part 'widgets/forgot_password_body_text.dart';
part 'widgets/forgot_password_email_text_field.dart';
part 'widgets/forgot_password_header_text.dart';
part 'widgets/send_forgot_password_email_button.dart';
