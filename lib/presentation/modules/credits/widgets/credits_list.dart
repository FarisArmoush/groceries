part of '../credits.dart';

class CreditsList extends StatelessWidget {
  const CreditsList({
    required this.title,
    required this.credits,
    super.key,
  });

  final String title;
  final List<CreditModel> credits;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: credits.isNotEmpty,
      child: Column(
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
          Column(
            children: ListTile.divideTiles(
              color: context.theme.hintColor.withOpacity(0.5),
              context: context,
              tiles: credits.map(
                (credit) => ListTile(
                  title: Text(credit.name),
                ),
              ),
            ).toList(),
          ),
          SizedBox(
            height: context.deviceHeight * 0.04,
          ),
        ],
      ),
    );
  }
}
