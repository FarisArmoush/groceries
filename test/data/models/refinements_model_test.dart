import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';

void main() {
  group('RefinementsModel', () {
    test('RefinementsModel.fromJson', () {
      final json = <String, Object?>{
        'refinement': 'Category',
        'isChecked': true,
      };

      final refinementsModel = RefinementsModel.fromJson(json);

      expect(refinementsModel.refinement, 'Category');
      expect(refinementsModel.isChecked, true);
    });

    test('RefinementsModel.toJson', () {
      const refinementsModel = RefinementsModel(
        refinement: 'Category',
        isChecked: true,
      );
      final json = refinementsModel.toJson();

      expect(json['refinement'], 'Category');
      expect(json['isChecked'], true);
    });

    test('RefinementsModel.Equality', () {
      const model1 = RefinementsModel(
        refinement: 'Category',
        isChecked: true,
      );

      const model2 = RefinementsModel(
        refinement: 'Category',
        isChecked: true,
      );

      expect(model1, model2);
    });

    test('RefinementsModel.copyWith', () {
      const originalModel = RefinementsModel(
        refinement: 'Category',
        isChecked: true,
      );

      final modifiedModel = originalModel.copyWith(
        isChecked: false,
      );

      expect(modifiedModel.refinement, originalModel.refinement);
      expect(modifiedModel.isChecked, false);
      expect(modifiedModel, isNot(originalModel));
    });
  });
}
