import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_content_text.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_title.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const AppDialogTitle(
        title: 'Logout from Groceies',
      ),
      content: const AppDialogContentText(
        text: 'Are you sure you would like to logout of your account?',
      ),
      actions: [
        OutlinedButton(
          onPressed: () => context.pop,
          child: const Text("No, Don't Logout"),
        ),
        FilledButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AppLogoutRequested());
            context.pop();
          },
          child: const Text('Yes, Logout'),
        ),
      ],
    );
  }
}
