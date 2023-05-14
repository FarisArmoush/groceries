import 'package:flutter/material.dart';
import 'package:groceries/presentation/modules/settings/widgets/display_name_text.dart';
import 'package:groceries/presentation/modules/settings/widgets/users_email_text.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';

class UserDataBox extends StatelessWidget {
  const UserDataBox({
    required this.imageUrl,
    required this.displayName,
    required this.email,
    super.key,
  });

  final String? imageUrl;
  final String? displayName;
  final String? email;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CachedImage(
          imageUrl: imageUrl,
          height: size.height * 0.2,
          boxFit: BoxFit.contain,
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        DisplayNameText(
          name: displayName,
        ),
        SizedBox(
          height: size.height * 0.005,
        ),
        UsersEmailText(
          email: email,
        ),
      ],
    );
  }
}