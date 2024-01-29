import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/models/app_flavor/app_flavor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InstancesProvider extends StatelessWidget {
  const InstancesProvider({
    required this.flavor,
    required this.sharedPreferences,
    required this.child,
    super.key,
  });

  final AppFlavor flavor;
  final SharedPreferences sharedPreferences;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppFlavor>(
          create: (context) => flavor,
        ),
        RepositoryProvider<FirebaseAuth>(
          create: (context) => FirebaseAuth.instance,
        ),
        RepositoryProvider<FirebaseFirestore>(
          create: (context) => FirebaseFirestore.instance,
        ),
        RepositoryProvider<FirebaseRemoteConfig>(
          create: (context) => FirebaseRemoteConfig.instance,
        ),
        RepositoryProvider<SharedPreferences>.value(
          value: sharedPreferences,
        ),
      ],
      child: child,
    );
  }
}
