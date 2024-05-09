import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:groceries/domain/entities/refinement/refinement_entity.dart';

void main() {
  group('RefinementEntity and RefinementsModel Mappers', () {
    // Create test instances of the model and entity
    const testModel = RefinementsModel(
      refinement: 'Free Shipping',
      isChecked: true,
    );

    final testEntity = RefinementEntity(
      refinement: 'Free Shipping',
      isChecked: true,
    );

    // Test converting RefinementsModel to RefinementEntity
    test('should correctly convert RefinementsModel to RefinementEntity', () {
      final result = testModel.toEntity();
      expect(result, isA<RefinementEntity>());
      expect(result.refinement, testModel.refinement);
      expect(result.isChecked, testModel.isChecked);
    });

    // Test converting RefinementEntity to RefinementsModel
    test('should correctly convert RefinementEntity to RefinementsModel', () {
      final result = testEntity.toModel();
      expect(result, isA<RefinementsModel>());
      expect(result.refinement, testEntity.refinement);
      expect(result.isChecked, testEntity.isChecked);
    });
  });
}
