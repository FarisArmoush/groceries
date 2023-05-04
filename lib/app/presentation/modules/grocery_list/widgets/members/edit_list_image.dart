import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/app/presentation/widgets/cached_image.dart';
import 'package:groceries/app/utils/constants/color_constants.dart';
import 'package:groceries/gen/assets.gen.dart';

class EditListImage extends StatelessWidget {
  const EditListImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        CachedImage(
          imageUrl:
              'https://www.searchenginejournal.com/wp-content/uploads/2022/06/image-search-1600-x-840-px-62c6dc4ff1eee-sej.png',
          height: 200,
          width: double.infinity,
          boxShape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: ColorConstants.black70,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.svg.icEdit,
                color: ColorConstants.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
