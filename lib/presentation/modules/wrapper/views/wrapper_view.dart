import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        if (state is Unauthenticated) {
          context.pushReplacementNamed(AppNamedRoutes.login);
        }
        if (state is Authenticated) {
          context.pushReplacementNamed(AppNamedRoutes.root);
        }
      },
      child: const Scaffold(
        body: Center(
          child: AppLoadingIndicator(),
        ),
      ),
    );
  }
}
