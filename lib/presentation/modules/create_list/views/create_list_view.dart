part of '../create_list.dart';

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
