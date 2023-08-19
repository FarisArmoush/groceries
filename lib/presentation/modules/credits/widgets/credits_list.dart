part of '../credits.dart';

class CreditsList extends StatelessWidget {
  const CreditsList({
    required this.title,
    required this.list,
    super.key,
  });

  final String title;
  final List<CreditModel> list;

  @override
  Widget build(BuildContext context) {
    if (list.isNotEmpty) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: AppFonts.medium(context),
              color: context.theme.primaryColor,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.01,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CreditsListTile(
              title: list[index].name,
              index: index,
              list: list,
            ),
          ),
          SizedBox(
            height: context.deviceHeight * 0.04,
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
