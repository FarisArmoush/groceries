import 'package:groceries/data/models/priority_model/priority_model.dart';

abstract interface class PrioritiesRepository {
  Future<List<PriorityModel>> fetchPriorities();
}
