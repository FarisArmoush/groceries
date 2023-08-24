part of '../grocery_list_details.dart';

class GroceryListDetailsForm extends StatelessWidget {
  const GroceryListDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverList.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return SizedBox(
              width: context.deviceWidth,
              child: Center(
                child: Text('$index'),
              ),
            );
          },
        ),

        // This is spacing for the add items [FloatingActionButton]
        SliverToBoxAdapter(
          child: SizedBox(
            height: context.deviceHeight * 0.1,
          ),
        ),
      ],
    );
  }
}
