import 'dart:convert';

import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@named
@Injectable(as: CacheService)
class SharedPreferencesCacheService implements CacheService {
  @override
  Future<T?> read<T>(String key) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      if (T == String) {
        return (prefs.getString(key) ?? '') as T?;
      } else if (T == bool) {
        return prefs.getBool(key) as T?;
      } else if (T == int) {
        return prefs.getInt(key) as T?;
      } else if (T == Map<String, dynamic>) {
        return json.decode(prefs.getString(key) ?? '') as T?;
      } else if (T == List<Map<String, dynamic>>) {
        final list = (prefs.getStringList(key) ?? []) as Iterable<String>;
        final mappedList =
            list.map((e) => jsonDecode(e) as Map<String, dynamic>);
        return List<Map<String, dynamic>>.from(mappedList) as T?;
      } else {
        throw Exception('Unsupported type: $T');
      }
    } catch (e) {
      throw Exception('Unsupported type: $T\n $e');
    }
  }

  @override
  Future<bool> write<T>(String key, T value) async {
    final prefs = await SharedPreferences.getInstance();
    if (T == String) {
      return prefs.setString(key, value as String);
    } else if (T == bool) {
      return prefs.setBool(key, value as bool);
    } else if (T == int) {
      return prefs.setInt(key, value as int);
    } else if (T == Map<String, dynamic>) {
      return prefs.setString(key, value as String);
    } else if (T == List<Map<String, dynamic>>) {
      final value0 = value as List<Map<String, dynamic>>;
      final value1 = value0.map(jsonEncode).toList();
      return prefs.setStringList(key, value1);
    } else {
      throw Exception('Unsupported type: $T');
    }
  }
}
