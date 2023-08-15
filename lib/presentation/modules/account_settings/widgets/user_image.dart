part of '../account_settings.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: context.theme.primaryColorLight,
          width: 3,
        ),
      ),
      child: CachedImage(
        height: context.deviceHeight * 0.2,
        boxFit: BoxFit.contain,
      ),
    );
  }
}
