part of 'category_box.dart';

class _CategoryBoxDivider extends StatelessWidget {
  const _CategoryBoxDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Theme.of(context).hintColor.withOpacity(0.25),
    );
  }
}
