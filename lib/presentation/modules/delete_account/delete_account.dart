library delete_account;

import 'dart:developer' as developer;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/widgets/widgets.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/exceptions/exceptions.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'cubit/delete_account_cubit.dart';
part 'cubit/delete_account_state.dart';
part 'views/delete_account_view.dart';
part 'widgets/delete_account_body_text.dart';
part 'widgets/delete_account_button.dart';
part 'widgets/delete_account_form.dart';
part 'widgets/delete_account_header_text.dart';
