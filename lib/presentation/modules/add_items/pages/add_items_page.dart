part of '../add_items.dart';

class AddItemsPage extends StatelessWidget {
  const AddItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddItemsBloc, AddItemsState>(
      listener: (context, state) {
        state.status.maybeWhen(
          failure: (error) => ScaffoldMessenger.of(context).showSnackBar(
            AppSnackBars.error(error: error),
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: state.status.maybeWhen(
            loading: AppBar.new,
            initial: AppBar.new,
            orElse: () => null,
          ),
          body: state.status.when(
            initial: AppLoadingIndicator.new,
            loading: AppLoadingIndicator.new,
            failure: (error) => ErrorState(title: Text(error)),
            success: () => CustomScrollView(
              slivers: [
                GroceriesAppBar(
                  largeTitle: Text(AppTranslations.addItems.addItems),
                  middle: Text(AppTranslations.addItems.addItems),
                ),
                const SliverToBoxAdapter(
                  child: AddItemsCategoriesList(),
                ),
                SliverSizedBox(
                  height: context.deviceHeight * 0.1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
