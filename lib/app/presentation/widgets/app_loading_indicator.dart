import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/widgets/app_platform_widget.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPlatformWidget(
      onAndroid: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).primaryColorLight,
        ),
      ),
      onIOS: const CupertinoActivityIndicator(),
    );
  }
}
