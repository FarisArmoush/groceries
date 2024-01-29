import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_form.dart';
import 'package:groceries/presentation/modules/home/widgets/home_app_bar.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_form.dart';
import 'package:groceries/presentation/widgets/sliver_sized_box.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/padding_extensions.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

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
