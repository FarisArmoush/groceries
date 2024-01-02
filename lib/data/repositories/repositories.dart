/// Contains all repostiory implementaions.
library repositories;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/data_sources.dart';
import 'package:groceries/data/models/models.dart';
import 'package:groceries/domain/repositories/repositories.dart';
import 'package:groceries/utils/params/login_param/login_param.dart';
import 'package:groceries/utils/params/register_param/register_param.dart';

part 'src/authentication_repository_impl.dart';
part 'src/base_groceries_repository_impl.dart';
part 'src/categories_repository_impl.dart';
part 'src/grocery_lists_repository_impl.dart';
part 'src/my_tasks_repository_impl.dart';
part 'src/recipes_repository_impl.dart';
part 'src/remote_config_repository_impl.dart';
