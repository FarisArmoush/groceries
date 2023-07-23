import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/grocery_list_settings/widgets/member_card.dart';
import 'package:groceries/presentation/widgets/primary_box.dart';

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
