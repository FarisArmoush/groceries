part of '../home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            context.read<GroceryListsBloc>().add(
                  const GroceryListsEvent.loadGroceryLists(),
                );
            context.read<MyTasksBloc>().add(const MyTasksEvent.loadMyTasks());
          },
          child: CustomScrollView(
            slivers: [
              const HomeAppBar(),
              SliverSizedBox(
                height: context.deviceHeight * 0.05,
              ),
              const GroceryListsForm()
                  .symmetricPadding(horizontal: 16)
                  .asSliver(),
              SliverSizedBox(
                height: context.deviceHeight * 0.05,
              ),
              const MyTasksForm().symmetricPadding(horizontal: 16).asSliver(),
              SliverSizedBox(
                height: context.deviceHeight * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: unused_element
class _MockAddItemsToCloudFirestoreAutomatically extends StatelessWidget {
  const _MockAddItemsToCloudFirestoreAutomatically();

  Future<void> addToCloudFirestore() async {
    final firestore = FirebaseFirestore.instance;
    final list = <String>[];

    for (final element in list) {
      final doc = await firestore.collection('items').add(
        {
          'id': 'id',
          'categoryId': 'eLvGGZimPFgjiP2RUZUi',
          'creationDate': DateTime.timestamp(),
          'isDone': false,
          'image': '',
          'notes': '',
          'name': element.trim(),
          'refinements': <dynamic>[],
        },
      );
      await doc.update({'id': doc.id});
    }
  }

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: addToCloudFirestore,
      child: const Text('Add'),
    );
  }
}
