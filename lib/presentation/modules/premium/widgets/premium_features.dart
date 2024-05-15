import 'package:flutter/material.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/modules/premium/widgets/premium_feature_cell.dart';
import 'package:groceries/utils/extenstions/hard_coded_extension.dart';

class PremiumFeatures extends StatelessWidget {
  const PremiumFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => _cells[index],
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemCount: _cells.length,
    );
  }

  static List<PremiumFeatureCell> get _cells => [
        PremiumFeatureCell(
          title: Text('Hello, World!'.hardCoded),
          iconBackgroundColor: Colors.green,
          iconPath: Assets.icons.alertBadge.path,
        ),
        PremiumFeatureCell(
          title: Text('Hello, World!'.hardCoded),
          iconBackgroundColor: Colors.deepPurpleAccent,
          iconPath: Assets.icons.alertBadge.path,
        ),
        PremiumFeatureCell(
          title: Text('Hello, World!'.hardCoded),
          iconBackgroundColor: Colors.redAccent,
          iconPath: Assets.icons.alertBadge.path,
        ),
        PremiumFeatureCell(
          title: Text('Hello, World!'.hardCoded),
          iconBackgroundColor: Colors.cyan,
          iconPath: Assets.icons.alertBadge.path,
        ),
      ];
}
