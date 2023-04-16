import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/widgets/cached_image.dart';

class ListCardImage extends StatelessWidget {
  const ListCardImage({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.12,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedImage(
          imageUrl: imageUrl,
          boxShape: BoxShape.rectangle,
          boxFit: BoxFit.fill,
        ),
      ),
    );
  }
}
