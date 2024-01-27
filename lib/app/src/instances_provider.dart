part of '../app.dart';

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
