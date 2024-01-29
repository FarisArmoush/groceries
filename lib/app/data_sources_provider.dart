import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/data_sources/data_sources.dart';

class DataSourcesProvider extends StatelessWidget {
  const DataSourcesProvider({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => AuthenticationDataSource(
                firebaseAuth: context.read<FirebaseAuth>(),
                firestore: context.read<FirebaseFirestore>(),
              ),
              lazy: false,
            ),
            RepositoryProvider(
              create: (context) => RemoteConfigDataSource(
                context.read<FirebaseRemoteConfig>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => GroceryListsDataSource(
                context.read<FirebaseFirestore>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => MyTasksDataSource(
                context.read<FirebaseFirestore>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => RecipesDataSource(
                context.read<FirebaseFirestore>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => BaseGroceriesDataSource(
                context.read<FirebaseFirestore>(),
              ),
            ),
            RepositoryProvider(
              create: (context) => CategoriesDataSource(
                context.read<FirebaseFirestore>(),
              ),
            ),
          ],
          child: child,
        );
      },
    );
  }
}
