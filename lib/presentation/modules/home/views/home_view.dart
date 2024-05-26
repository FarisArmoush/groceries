import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/grocery_lists/grocery_lists_bloc.dart';
import 'package:groceries/presentation/blocs/my_tasks/my_tasks_bloc.dart';
import 'package:groceries/presentation/blocs/priorities/priorities_bloc.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries/presentation/extensions/widgets_as_extensions.dart';
import 'package:groceries/presentation/modules/home/widgets/grocery_lists/grocery_lists_form.dart';
import 'package:groceries/presentation/modules/home/widgets/home_app_bar.dart';
import 'package:groceries/presentation/modules/home/widgets/my_tasks/my_tasks_form.dart';
import 'package:groceries/presentation/widgets/sliver_sized_box.dart';
import 'package:groceries/shared/logger.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator.adaptive(
          onRefresh: () async {
            context.read<GroceryListsBloc>().add(
                  const GroceryListsEvent.getGroceryLists(),
                );
            context.read<MyTasksBloc>().add(const MyTasksEvent.getMyTasks());

            context.read<PrioritiesBloc>().add(
                  const PrioritiesEvent.getPriorities(),
                );
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
              // const MockAddItemsToCloudFirestoreAutomatically(),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: unused_element
class MockAddItemsToCloudFirestoreAutomatically extends StatelessWidget {
  const MockAddItemsToCloudFirestoreAutomatically({super.key});

  Future<void> addToCloudFirestore() async {
    final firestore = FirebaseFirestore.instance;
    final list = <String>[];

    for (final element in list) {
      await Future.delayed(
        Durations.long4,
        () => firestore.collection('items').add(
          {
            'categoryId': 'eLvGGZimPFgjiP2RUZUi',
            'creationDate': DateTime.timestamp(),
            'isDone': false,
            'image': '',
            'notes': '',
            'priorityId': 'wvPfYWa0hb9EUSPDLwO1',
            'name': element.trim(),
            'refinements': <dynamic>[],
          },
        ),
      );
    }
    logger.verbose('Done');
  }

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: addToCloudFirestore,
      child: const Text('Add'),
    ).asSliver();
  }
}
