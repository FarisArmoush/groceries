part of 'category_box.dart';

/// The divider used in the [CategoryBox]
class _CategoryBoxDivider extends StatelessWidget {
  const _CategoryBoxDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Theme.of(context).hintColor.withOpacity(0.25),
    );
  }
}
