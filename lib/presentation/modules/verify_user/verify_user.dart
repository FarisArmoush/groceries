library verify_user;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/modules/verify_user/bloc/verify_user_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

export 'package:groceries/presentation/modules/verify_user/bloc/verify_user_bloc.dart';

part 'views/verify_user_view.dart';
part 'widgets/failed_to_send_verification_email.dart';
part 'widgets/loading_sending_verification_email.dart';
part 'widgets/send_verification_email_button.dart';
part 'widgets/verification_email_sent_successfully.dart';
part 'widgets/verify_user_initial_body.dart';
