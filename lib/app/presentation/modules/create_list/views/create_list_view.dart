import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/app/core/routes/app_named_routes.dart';
import 'package:groceries/app/presentation/modules/create_list/views/add_list_name_and_image_view.dart';
import 'package:groceries/app/presentation/modules/create_list/widgets/cancel_list_creation_dialog.dart';
import 'package:groceries/app/presentation/modules/create_list/widgets/create_new_list_fab.dart';
import 'package:groceries/app/presentation/modules/create_list/widgets/invite_users_to_list_form.dart';
import 'package:groceries/app/presentation/widgets/page_indicator.dart';

class CreateListView extends StatelessWidget {
  CreateListView({Key? key}) : super(key: key);

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => _showCancelListDialog(context),
        ),
        title: const Text('Create a new List'),
        bottom: PreferredSize(
          preferredSize: size * 0.025,
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
      // context.pushReplacementNamed(AppNamedRoutes.listCreatedSuccessfully);
      context.pushReplacementNamed(AppNamedRoutes.listCreatedUnsuccessfully);
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 750),
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  void _showCancelListDialog(BuildContext context) {
    showDialog<CancelListCreationDialog>(
      context: context,
      builder: (context) => const CancelListCreationDialog(),
    );
  }
}
