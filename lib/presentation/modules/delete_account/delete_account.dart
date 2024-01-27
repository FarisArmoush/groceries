library delete_account;

import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/delete_account/bloc/delete_account_bloc.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

export 'package:groceries/presentation/modules/delete_account/bloc/delete_account_bloc.dart';

part 'views/delete_account_view.dart';
part 'widgets/delete_account_body_text.dart';
part 'widgets/delete_account_button.dart';
part 'widgets/delete_account_header_text.dart';
