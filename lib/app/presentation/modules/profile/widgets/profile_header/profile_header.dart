import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/profile/widgets/profile_header/display_name_text.dart';
import 'package:groceries/app/presentation/modules/profile/widgets/profile_header/users_email_text.dart';
import 'package:groceries/app/presentation/widgets/cached_image.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    required this.imageUrl,
    required this.displayName,
    required this.email,
    Key? key,
  }) : super(key: key);

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
