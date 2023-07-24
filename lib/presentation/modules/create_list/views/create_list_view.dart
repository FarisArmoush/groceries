import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_named_routes.dart';
import 'package:groceries/presentation/modules/create_list/views/add_list_name_and_image_view.dart';
import 'package:groceries/presentation/modules/create_list/widgets/cancel_list_creation_dialog.dart';
import 'package:groceries/presentation/modules/create_list/widgets/create_new_list_fab.dart';
import 'package:groceries/presentation/modules/create_list/widgets/invite_users_to_list_form.dart';
import 'package:groceries/presentation/widgets/page_indicator.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';

class CreateListView extends StatelessWidget {
  CreateListView({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => showDialog<CancelListCreationDialog>(
            context: context,
            builder: (context) => const CancelListCreationDialog(),
          ),
        ),
        title: Text(
          AppTranslations.createNewList,
        ),
        bottom: PreferredSize(
          preferredSize: context.deviceSize * 0.025,
          child: PageIndicator(
            count: 2,
            pageController: _pageController,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          AddListNameAndImageView(),
          InviteUsersToListForm(),
        ],
      ),
      floatingActionButton: CreateNewListFAB(
        onPressed: () => _navigationHandler(context),
      ),
    );
  }

  void _navigationHandler(BuildContext context) {
    if (_pageController.page == 1) {
      context.pushReplacementNamed(AppNamedRoutes.listCreatedSuccessfully);
      // context.pushReplacementNamed(AppNamedRoutes.listCreatedUnsuccessfully);
    } else {
      _pageController.nextPage(
        duration: 750.milliseconds,
        curve: Curves.fastOutSlowIn,
      );
    }
  }
}
