import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppPlatformWidget extends StatelessWidget {
  const AppPlatformWidget({
    this.onAndroid,
    this.onIOS,
    Key? key,
  }) : super(key: key);

  final Widget? onAndroid;
  final Widget? onIOS;

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.iOS || onIOS == null) {
      return onIOS!;
    }
    if (defaultTargetPlatform == TargetPlatform.android || onIOS == null) {
      return onAndroid!;
    }
    return onAndroid!;
  }
}
