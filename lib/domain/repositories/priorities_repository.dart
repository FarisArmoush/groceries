import 'package:groceries/data/models/priority/priority_model.dart';

abstract interface class PrioritiesRepository {
  Future<List<PriorityModel>> fetchPriorities();
}
