import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/app/presentation/widgets/dialog_widgets/app_dialog_content_text.dart';
import 'package:groceries/app/presentation/widgets/dialog_widgets/app_dialog_title.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BottomSheet(
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const AppDialogTitle(
              title: 'Logout from Groceies',
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const AppDialogContentText(
              text: 'Are you sure you would like to logout of your account?',
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            FilledButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AppLogoutRequested());
                context.pop();
              },
              child: const Text('Yes, Logout'),
            ),
            OutlinedButton(
              onPressed: () => context.pop(),
              child: const Text("No, Don't Logout"),
            ),
          ],
        );
      },
    );
  }
}
