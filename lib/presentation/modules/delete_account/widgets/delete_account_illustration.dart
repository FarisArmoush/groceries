import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class DeleteAccountIllustration extends StatelessWidget {
  const DeleteAccountIllustration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Assets.svg.illGaming.svg(
      height: size.height * 0.4,
    );
  }
}
