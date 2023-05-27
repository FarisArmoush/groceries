import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/onboarding/views/onboarding_view.dart';
import 'package:groceries/presentation/modules/root/views/root_view.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is Unauthenticated) {
          return const OnboardingView();
        }
        if (state is Authenticated) {
          return const RootView();
        }
        return const Scaffold(
          body: Center(
            child: Text(
              'Something went wrong!',
            ),
          ),
        );
      },
    );
  }
}
