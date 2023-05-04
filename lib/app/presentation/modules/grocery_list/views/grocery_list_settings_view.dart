import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/config/localization/app_translations.dart';
import 'package:groceries/app/presentation/modules/grocery_list/widgets/members/edit_list_image.dart';
import 'package:groceries/app/presentation/modules/grocery_list/widgets/members/list_members_box.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';
import 'package:groceries/gen/assets.gen.dart';

class GroceryListSettingsView extends StatelessWidget {
  const GroceryListSettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTranslations.listSettings,
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: Text(AppTranslations.save),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        primary: true,
        padding: const EdgeInsets.all(12),
        children: [
          const EditListImage(),
          SizedBox(
            height: size.height * 0.05,
          ),
          AppTextField(
            labelText: AppTranslations.listName,
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          const ListMembersBox(),
          SizedBox(
            height: size.height * 0.04,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.svg.icListX,
              color: Theme.of(context).primaryColor,
            ),
            label: Text(
              AppTranslations.deleteList,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ],
      ),
    );
  }
}
