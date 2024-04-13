import 'package:groceries/data/models/priority_model/priority_model.dart';

abstract class ConstantsRepository {
  Future<List<PriorityModel>> fetchPriorities();
}
