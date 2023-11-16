part of '../settings.dart';

class UserDataBox extends StatelessWidget {
  const UserDataBox({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserDataCubit>().state;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const UserImage(),
        SizedBox(
          height: context.deviceHeight * 0.02,
        ),
        SelectableText(
          user.displayName ?? '',
          style: TextStyle(
            fontFamily: AppFonts.medium(context),
            color: context.theme.primaryColor,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: context.deviceHeight * 0.005,
        ),
        SelectableText(
          user.email ?? '',
          style: TextStyle(
            fontFamily: AppFonts.light(context),
            color: context.theme.hintColor,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
