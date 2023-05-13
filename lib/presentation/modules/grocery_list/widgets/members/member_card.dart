import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/widgets/cached_image.dart';
import 'package:groceries/utils/constants/assets.gen.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return ListTile(
      leading: CachedImage(
        imageUrl:
            'https://letsenhance.io/static/15912da66660b919112b5dfc9f562f6f/f90fb/SC.jpg',
        width: size.width * 0.12,
      ),
      title: const Text('Faris Armoush'),
      subtitle: const Text(
        'fariskarmoush@gmail.com',
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          Assets.svg.icUserX,
          color: Theme.of(context).hintColor,
        ),
      ),
    );
  }
}
