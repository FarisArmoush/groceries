import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/modules/premium/widgets/premium_description.dart';
import 'package:groceries/presentation/modules/premium/widgets/premium_features.dart';
import 'package:groceries/presentation/modules/premium/widgets/premium_title.dart';

class PremiumView extends StatelessWidget {
  const PremiumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.premium.buyPremium),
      ),
      body: ListView(
        padding: AppPaddings.scaffold(context),
        children: const [
          PremiumTitle(),
          SizedBox(height: 8),
          PremiumDescription(),
          SizedBox(height: 8),
          PremiumFeatures(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: _persistentFooterButtons(context),
    );
  }

  List<Widget> _persistentFooterButtons(BuildContext context) {
    final monthly = AppTranslations.premium.monthly;
    final annually = AppTranslations.premium.annual;
    return [
      ElevatedButton(
        onPressed: () {},
        child: Text('$monthly 3.99\$'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text('$annually 21.99\$'),
      ),
    ];
  }
}
