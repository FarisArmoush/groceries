part of '../create_list.dart';

class InvitePeopleToListText extends StatelessWidget {
  const InvitePeopleToListText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTranslations.createGroceryList.invitePeopleToList,
      style: TextStyle(
        fontFamily: AppFonts.semiBold(context),
        color: context.theme.primaryColor,
        fontSize: 28,
      ),
      textAlign: TextAlign.center,
    );
  }
}
