part of 'notification_card.dart';

class _NotificationCardSubtitle extends StatelessWidget {
  const _NotificationCardSubtitle({
    required this.subtitle,
  });
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: AppTextStyles.light(
        context: context,
        color: Theme.of(context).hintColor,
        fontSize: 12,
      ),
    );
  }
}
