import 'dart:convert';

import 'package:groceries/data/data_sources/interfaces/constants_data_source.dart';
import 'package:groceries/data/data_sources/local/cache_constants_data_source.dart';
import 'package:groceries/data/data_sources/remote/firestore_constants_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/repositories/constants_repository.dart';
import 'package:groceries/utils/keys/storage_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: ConstantsRepository)
class ConstantsRepositoryImpl extends ConstantsRepository {
  ConstantsRepositoryImpl(
    @Named.from(FirestoreConstatntsDataSource) this._dataSource,
    @Named.from(LocalConstantsDataSource) this._localDataSource,
  );

  final ConstantsDataSource _dataSource;
  final ConstantsDataSource _localDataSource;
  @override
  Future<List<PriorityModel>> fetchPriorities() async {
    final localPriorities = await _localDataSource.fetchPriorities();
    if (localPriorities.isNotEmpty) {
      return localPriorities;
    } else {
      final remotePriorities = await _dataSource.fetchPriorities().then(
        (value) {
          _cachePriorities(value);

          return value;
        },
      );
      return remotePriorities;
    }
  }

  Future<void> _cachePriorities(List<PriorityModel> input) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonStringList = input.map((item) => item.toJson()).toList();
    final jsonString = json.encode(jsonStringList);
    await prefs.setString(StorageKeys.priorities, jsonString);
  }
}
