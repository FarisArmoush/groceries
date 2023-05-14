import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/grocery_list/widgets/members/member_card.dart';
import 'package:groceries/presentation/widgets/primary_box.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class ListMembersBox extends StatelessWidget {
  const ListMembersBox({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryBox(
      header: Text(
        AppTranslations.listMember,
        style: AppTextStyles.regular(
          context: context,
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
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
