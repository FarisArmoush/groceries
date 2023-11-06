part of '../credits.dart';

class CreditsPage extends StatelessWidget {
  const CreditsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final creditsCubit = context.watch<CreditsCubit>().state;

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          GroceriesAppBar(
            title: AppTranslations.additionalResources.credits,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList.list(
              children: [
                CreditsList(
                  title:
                      const Text('Packages provided by the Flutter Community.'),
                  credits: creditsCubit.uiPackages,
                ),
                CreditsList(
                  title: const Text('State management packages.'),
                  credits: creditsCubit.stateManagementPackages,
                ),
                CreditsList(
                  title: const Text('Development specific packages.'),
                  credits: creditsCubit.devPackages,
                ),
                CreditsList(
                  title: const Text('Firebase Packages.'),
                  credits: creditsCubit.backendPackages,
                ),
                CreditsList(
                  title: const Text('Misc.'),
                  credits: creditsCubit.miscPackages,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
