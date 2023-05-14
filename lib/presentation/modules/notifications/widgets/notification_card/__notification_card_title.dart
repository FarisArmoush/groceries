part of 'notification_card.dart';

class _NotificationCardTitle extends StatelessWidget {
  const _NotificationCardTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.medium(
        context: context,
        color: Theme.of(context).primaryColor,
        fontSize: 16,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
