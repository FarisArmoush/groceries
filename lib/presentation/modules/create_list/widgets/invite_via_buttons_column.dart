part of '../create_list.dart';

class InviteViaButtonsColumn extends StatelessWidget {
  const InviteViaButtonsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: Assets.svg.icAtSign.svg(
            color: context.theme.primaryColor,
            height: context.deviceHeight * 0.03,
          ),
          label: Text(
            AppTranslations.email,
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
            color: context.theme.primaryColor,
            height: context.deviceHeight * 0.03,
          ),
          label: Text(
            AppTranslations.copyInvitationLink,
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
