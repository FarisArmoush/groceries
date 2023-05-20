import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/app_fonts.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

part '__display_name.dart';
part '__email.dart';

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
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CachedImage(
          imageUrl: imageUrl,
          height: context.deviceHeight * 0.2,
          boxFit: BoxFit.contain,
        ),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        _DisplayName(
          name: displayName,
        ),
        SizedBox(
          height: context.deviceHeight * 0.005,
        ),
        _Email(
          email: email,
        ),
      ],
    );
  }
}
