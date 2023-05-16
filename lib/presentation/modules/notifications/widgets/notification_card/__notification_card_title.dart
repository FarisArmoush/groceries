part of 'notification_card.dart';

class _NotificationCardTitle extends StatelessWidget {
  const _NotificationCardTitle({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).listTileTheme.titleTextStyle,
      overflow: TextOverflow.ellipsis,
    );
  }
}
