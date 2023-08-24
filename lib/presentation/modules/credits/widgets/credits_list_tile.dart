part of '../credits.dart';

class CreditsListTile extends StatelessWidget {
  const CreditsListTile({
    required this.title,
    required this.index,
    required this.list,
    super.key,
  });

  final String title;
  final int index;
  final List<CreditModel> list;

  @override
  Widget build(BuildContext context) {
    final isLast = index == list.length - 1;
    final isFirst = index == 0;
    return ListTile(
      title: Text(title),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isFirst ? 15 : 0),
          topRight: Radius.circular(isFirst ? 15 : 0),
          bottomLeft: Radius.circular(isLast ? 15 : 0),
          bottomRight: Radius.circular(isLast ? 15 : 0),
        ),
      ),
    );
  }
}
