part of '../credits.dart';

class CreditsForm extends StatelessWidget {
  const CreditsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final creditsCubit = context.watch<CreditsCubit>();

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
            list: creditsCubit.uiPackages,
          ),
          CreditsList(
            title: 'State management packages.',
            list: creditsCubit.stateManagementPackages,
          ),
          CreditsList(
            title: 'Development specific packages.',
            list: creditsCubit.devPackages,
          ),
          CreditsList(
            title: 'Firebase Packages.',
            list: creditsCubit.backendPackages,
          ),
          CreditsList(
            title: 'Misc.',
            list: creditsCubit.miscPackages,
          ),
        ],
      ),
    );
  }
}
