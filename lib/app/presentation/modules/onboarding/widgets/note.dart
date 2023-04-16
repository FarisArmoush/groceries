import 'package:flutter/material.dart';
import 'package:groceries/app/presentation/modules/onboarding/widgets/note_text.dart';
import 'package:groceries/gen/assets.gen.dart';

class Note extends StatelessWidget {
  const Note({
    required this.header,
    required this.body,
    Key? key,
  }) : super(key: key);

  final String header;
  final String body;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.15),
      child: Stack(
        children: [
          Assets.png.icPaperAndShoppingCart.image(),
          NoteText(
            body: body,
            header: header,
          ),
        ],
      ),
    );
  }
}
