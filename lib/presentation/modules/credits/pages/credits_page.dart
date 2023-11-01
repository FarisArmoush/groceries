part of '../credits.dart';

class CreditsPage extends StatelessWidget {
  const CreditsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final creditsCubit = context.watch<CreditsCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.additionalResources.credits),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        children: [
          CreditsList(
            title: 'Packages provided by the Flutter Community.',
            credits: creditsCubit.uiPackages,
          ),
          CreditsList(
            title: 'State management packages.',
            credits: creditsCubit.stateManagementPackages,
          ),
          CreditsList(
            title: 'Development specific packages.',
            credits: creditsCubit.devPackages,
          ),
          CreditsList(
            title: 'Firebase Packages.',
            credits: creditsCubit.backendPackages,
          ),
          CreditsList(
            title: 'Misc.',
            credits: creditsCubit.miscPackages,
          ),
        ],
      ),
    );
  }
}
