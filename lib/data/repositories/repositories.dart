/// Contains all repostiory implementaions.
library repositories;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/data_sources.dart';
import 'package:groceries/data/models/credit_model/credit_model.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/repositories/repositories.dart';
import 'package:groceries/utils/params/login_param/login_param.dart';
import 'package:groceries/utils/params/register_param/register_param.dart';

part 'src/authentication_repository_impl.dart';
part 'src/base_groceries_repository_impl.dart';
part 'src/credits_repository_impl.dart';
part 'src/grocery_lists_repository_impl.dart';
part 'src/my_tasks_repository_impl.dart';
part 'src/recipes_repository_impl.dart';
part 'src/remote_config_repository_impl.dart';
