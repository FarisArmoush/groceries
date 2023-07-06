import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/app_packages.dart';

class CreditsView extends StatelessWidget {
  const CreditsView({super.key});

  @override
  Widget build(BuildContext context) {
    final appPackages = AppPackages()..sortAppPackages();
    final packages = appPackages.getAllPackages;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.credits),
      ),
      body: ListView.builder(
        itemCount: packages.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 12,
        ),
        itemBuilder: (context, index) => _listTile(index, packages),
      ),
    );
  }

  ListTile _listTile(int index, List<AppPackage> packages) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            index == 0 ? 15 : 0,
          ),
          topRight: Radius.circular(
            index == 0 ? 15 : 0,
          ),
          bottomLeft: Radius.circular(
            index == packages.length - 1 ? 15 : 0,
          ),
          bottomRight: Radius.circular(
            index == packages.length - 1 ? 15 : 0,
          ),
        ),
      ),
      title: Text(
        packages[index].name,
      ),
    );
  }
}
