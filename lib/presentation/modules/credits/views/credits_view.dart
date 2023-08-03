part of '../credits.dart';

class CreditsView extends StatelessWidget {
  const CreditsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.credits),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          const CreditsFlutterPackagesText(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const FlutterPackagesList(),
        ],
      ),
    );
  }
}
