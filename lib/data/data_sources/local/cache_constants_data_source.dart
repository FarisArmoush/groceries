import 'dart:convert';
import 'dart:developer';

import 'package:groceries/data/data_sources/interfaces/constants_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/utils/keys/storage_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@named
@Injectable(as: ConstantsDataSource)
class LocalConstantsDataSource implements ConstantsDataSource {
  @override
  Future<List<PriorityModel>> fetchPriorities() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final jsonString = sharedPreferences.getString(StorageKeys.priorities);
    if (jsonString case != null && != '') {
      final jsonList = json.decode(jsonString) as List<dynamic>;
      final priorities = jsonList
          .map((e) => PriorityModel.fromJson(e as Map<String, dynamic>))
          .toList();
      log('Not Empty from cache', name: 'ConstantsDataSource');
      return priorities;
    }
    log('Empty from cache', name: 'ConstantsDataSource');

    return [];
  }
}
