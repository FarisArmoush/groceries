part of '../create_list.dart';

class InviteToListButtons extends StatelessWidget {
  const InviteToListButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: Assets.svg.icAtSign.svg(
            height: context.deviceHeight * 0.03,
            colorFilter: ColorFilter.mode(
              context.theme.primaryColor,
              BlendMode.srcIn,
            ),
          ),
          label: Text(
            AppTranslations.general.email,
            style: TextStyle(
              fontFamily: AppFonts.regular(context),
              color: context.theme.primaryColor,
              fontSize: 16,
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Assets.svg.icClipboardCopy.svg(
            height: context.deviceHeight * 0.03,
            colorFilter: ColorFilter.mode(
              context.theme.primaryColor,
              BlendMode.srcIn,
            ),
          ),
          label: Text(
            AppTranslations.createGroceryList.copyInvitationLink,
            style: TextStyle(
              fontFamily: AppFonts.regular(context),
              color: context.theme.primaryColor,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
