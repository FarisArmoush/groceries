import 'package:flutter/material.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/assets.gen.dart';
import 'package:groceries/utils/extenstions/media_query_values.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CachedImage(
        imageUrl:
            'https://letsenhance.io/static/15912da66660b919112b5dfc9f562f6f/f90fb/SC.jpg',
        width: context.deviceWidth * 0.12,
      ),
      title: const Text('Faris Armoush'),
      subtitle: const Text(
        'fariskarmoush@gmail.com',
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Assets.svg.icUserX.svg(
          color: Theme.of(context).hintColor,
        ),
      ),
    );
  }
}
