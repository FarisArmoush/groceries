part of 'notification_card.dart';

class _NotificationCardDate extends StatelessWidget {
  const _NotificationCardDate({
    required this.date,
  });

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${date.day}/${date.month}/${date.year}',
      style: TextStyle(
        fontFamily: AppFonts.light(context),
        color: Theme.of(context).hintColor,
        fontSize: 12,
      ),
    );
  }
}
