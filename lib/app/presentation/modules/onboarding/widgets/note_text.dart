import 'package:flutter/material.dart';
import 'package:groceries/app/core/constants/app_text_styles.dart';
import 'package:groceries/app/core/constants/color_constants.dart';

class NoteText extends StatelessWidget {
  const NoteText({
    required this.header,
    required this.body,
    Key? key,
  }) : super(key: key);

  final String header;
  final String body;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.225,
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.12,
        vertical: size.width * 0.09,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: AppTextStyles.nanumPen(
              color: ColorConstants.black,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            body,
            style: AppTextStyles.nanumBrush(
              color: ColorConstants.black,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
