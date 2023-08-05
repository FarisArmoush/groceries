part of '../additional_resources.dart';

class LegalListTile extends StatelessWidget {
  const LegalListTile({
    required this.title,
    required this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        tileColor: Colors.transparent,
        trailing: const NextArrowIcon(),
      ),
    );
  }
}
