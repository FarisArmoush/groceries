import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_content_text.dart';
import 'package:groceries/app/presentation/widgets/app_dialog_title.dart';
import 'package:groceries/app/presentation/widgets/buttons/app_button.dart';

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
        AppButton(
          text: 'No, Dont Logout!',
          buttonStyle: AppButtonStyles.transparent(context),
          onTap: () => context.pop(),
        ),
        AppButton(
          text: 'Yes, Logout',
          buttonStyle: AppButtonStyles.red(context),
          onTap: () {
            context.read<AuthBloc>().add(const AppLogoutRequested());
            context.pop();
          },
        ),
      ],
    );
  }
}
