import 'package:flutter/material.dart';
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
        title: const Text('Buy Premium'),
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
    return [
      ElevatedButton(
        onPressed: () {},
        child: const Text(r'Monthly 3.99$'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text(r'Annual 21.99$'),
      ),
    ];
  }
}
