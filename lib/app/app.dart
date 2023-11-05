library app;

import 'dart:developer' as developer;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/remote_config_translations_loader.dart';
import 'package:groceries/config/routes/app_go_router.dart';
import 'package:groceries/config/theme/app_themes.dart';
import 'package:groceries/data/data_sources/data_sources.dart';
import 'package:groceries/data/repositories/repositories.dart';
import 'package:groceries/domain/repositories/repositories.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/blocs/authentication/authentication_bloc.dart';
import 'package:groceries/presentation/blocs/logout/logout_bloc.dart';
import 'package:groceries/presentation/blocs/remote_config/remote_config_bloc.dart';
import 'package:groceries/presentation/blocs/theme/theme_cubit.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'src/app.dart';
part 'src/app_bloc_observer.dart';
part 'src/app_easy_localization.dart';
part 'src/app_view.dart';
