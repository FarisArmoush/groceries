library credits;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/credit_model.dart';
import 'package:groceries/domain/use_cases/local_use_cases/fetch_credits_use_case.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

part 'cubit/credits_cubit.dart';
part 'cubit/credits_state.dart';
part 'views/credits_view.dart';
part 'widgets/credits_flutter_packages_text.dart';
part 'widgets/credits_form.dart';
part 'widgets/credits_list.dart';
part 'widgets/credits_list_tile.dart';
