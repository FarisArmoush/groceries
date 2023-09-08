part of '../theme_settings.dart';

class ThemeSettingsView extends StatelessWidget {
  const ThemeSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.theme.theme),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          const ThemeHeaderText(),
          SizedBox(
            height: context.deviceHeight * 0.02,
          ),
          const ThemeRadiosList(),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          const ThemeHintText(),
        ],
      ),
    );
  }
}
