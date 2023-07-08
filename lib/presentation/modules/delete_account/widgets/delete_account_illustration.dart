import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class DeleteAccountIllustration extends StatelessWidget {
  const DeleteAccountIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.svg.illGaming.svg(
      height: context.deviceHeight * 0.4,
    );
  }
}
