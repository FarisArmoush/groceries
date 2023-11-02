part of '../home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            SizedBox(
              height: context.deviceHeight * 0.04,
            ),
            const HomeHeader(),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            const GroceryListsForm(),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            const MyTasksForm(),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            // const _MockAddItemsToCloudFirestoreAutomatically(),
          ],
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
