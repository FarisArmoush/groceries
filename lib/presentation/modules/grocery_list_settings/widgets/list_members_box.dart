part of '../grocery_list_settings.dart';

class ListMembersBox extends StatelessWidget {
  const ListMembersBox({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryBox(
      header: Text(
        AppTranslations.listMembers,
      ),
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        primary: false,
        itemBuilder: (context, index) {
          return const MemberCard();
        },
      ),
    );
  }
}
