part of '../add_items.dart';

class AddItemsPage extends StatelessWidget {
  const AddItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AddItemsBloc, AddItemsState>(
        builder: (context, state) => state.status.when(
          initial: AppLoadingIndicator.new,
          loading: AppLoadingIndicator.new,
          failure: Text.new,
          success: () => CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              GroceriesAppBar(title: AppTranslations.addItems.addItems),
              const SliverToBoxAdapter(
                child: AddItemsCategoriesList(),
              ),
              SliverSizedBox(
                height: context.deviceHeight * 0.1,
              ),
            ],
          ),
        ),
        listener: (context, state) {
          state.status.maybeWhen(
            failure: (error) => ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(error))),
            orElse: () {},
          );
        },
      ),
      bottomSheet: const AddItemsTextField(),
    );
  }
}
