import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/user/user_entity.dart';
import 'package:groceries/presentation/constants/assets.gen.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/presentation/widgets/cancel_bottom_sheet.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({required this.userModel, super.key});

  final UserEntity userModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedImage(
        width: context.deviceWidth * 0.12,
        imageUrl: faker.image.image(),
        progressIndicatorBuilder: (context, url, progress) {
          return const SizedBox.shrink();
        },
      ),
      title: Text(userModel.name ?? ''),
      subtitle: Text(userModel.email ?? ''),
      trailing: IconButton(
        onPressed: () => showModalBottomSheet<void>(
          showDragHandle: true,
          elevation: 0,
          context: context,
          builder: (context) => CancelBottomSheet(
            title: Translations.groceryListSettings.removeMemberFromList,
            onCancel: () => context.pop(),
          ),
        ),
        icon: Assets.icons.removeUser.svg(
          colorFilter: ColorFilter.mode(
            context.theme.hintColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
