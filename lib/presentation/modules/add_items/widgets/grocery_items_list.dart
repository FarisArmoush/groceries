part of '../add_items.dart';

class GroceryItemsList extends StatelessWidget {
  const GroceryItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddItemsBloc, AddItemsState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return switch (state.status) {
          AddItemsStatus.loading => const AppLoadingIndicator(),
          AddItemsStatus.error => Text(state.error).centered(),
          AddItemsStatus.success => _widget(state),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }

  ListView _widget(AddItemsState state) {
    return ListView.separated(
      itemCount: state.baseGroceries.length,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GroceryItemCard(
          groceryModel: state.baseGroceries[index],
          onPressed: () {},
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: context.deviceHeight * 0.01,
        );
      },
    );
  }
}
