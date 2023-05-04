import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/presentation/modules/root/views/root_view.dart';
import 'package:groceries/app/presentation/modules/welcome/views/welcome_view.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        if (state is Unauthenticated) {
          return const WelcomeView();
        }
        if (state is Authenticated) {
          return const RootView();
        }
        return Scaffold(
          body: Center(
            child: Text(
              AppTranslations.somethingWentWrong,
            ),
          ),
        );
      },
    );
  }
}
