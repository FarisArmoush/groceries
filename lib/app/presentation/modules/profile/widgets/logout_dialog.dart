import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/localization/app_translations.dart';
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
            AppDialogTitle(
              title: AppTranslations.logoutFromApp,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            AppDialogContentText(
              text: AppTranslations.youSureYouWantToLogout,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            FilledButton(
              onPressed: () => context
                ..read<AuthBloc>().add(const AppLogoutRequested())
                ..pop(),
              child: Text(
                AppTranslations.yesLogout,
              ),
            ),
            OutlinedButton(
              onPressed: () => context.pop(),
              child: Text(
                AppTranslations.dontLogout,
              ),
            ),
          ],
        );
      },
    );
  }
}
