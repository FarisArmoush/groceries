library verify_user;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'cubit/verify_user_cubit.dart';
part 'cubit/verify_user_state.dart';
part 'views/verify_user_view.dart';
part 'widgets/failed_to_send_verification_email.dart';
part 'widgets/loading_sending_verification_email.dart';
part 'widgets/send_verification_email_button.dart';
part 'widgets/verification_email_sent_successfully.dart';
part 'widgets/verify_user_form.dart';
part 'widgets/verify_user_initial_body.dart';
