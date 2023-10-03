part of '../create_list.dart';

class CreateListForm extends StatelessWidget {
  const CreateListForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateListBloc, CreateListState>(
      listenWhen: (previous, current) => previous != current,
      listener: _listener,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppTranslations.createGroceryList.createNewList),
          leading: BackButton(
            onPressed: () => showModalBottomSheet<CancelBottomSheet>(
              elevation: 0,
              context: context,
              builder: (context) => const CancelBottomSheet(),
            ),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(32),
          children: [
            AppTextField(
              labelText: AppTranslations.general.listName,
              onTapOutside: (_) => FocusScope.of(context).unfocus(),
            ),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            const CreateListIconsGrid(),
            Divider(
              height: context.deviceHeight * 0.1,
            ),
            Text(
              AppTranslations.createGroceryList.invitePeopleToList,
              style: TextStyle(
                fontFamily: AppFonts.semiBold(context),
                color: context.theme.primaryColor,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: context.deviceHeight * 0.04,
            ),
            const InviteViaButtonsColumn(),
            SizedBox(
              height: context.deviceHeight * 0.06,
            ),
            ElevatedButton.icon(
              label: Text(AppTranslations.createGroceryList.createList),
              icon: Assets.svg.icPlus.svg(
                color: context.theme.colorScheme.secondary,
              ),
              onPressed: () => context.read<CreateListBloc>().add(
                    CreateListEvent.createList(
                      groceryListModel: GroceryListModel(
                        id: '1',
                        name: '',
                        imageUrl: '',
                        items: [],
                        members: [],
                        creationDate: DateTime.now(),
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  void _listener(BuildContext context, CreateListState state) {
    state.status.when(
      initial: () {},
      loading: () {
        showDialog<AppLoadingIndicator>(
          context: context,
          barrierDismissible: false,
          builder: (context) => const AppLoadingIndicator(),
        );
      },
      success: () {
        context.pushReplacementNamed(AppNamedRoutes.listCreatedSuccessfully);
      },
      failure: (error) {
        context.pushReplacementNamed(AppNamedRoutes.listCreatedUnsuccessfully);
      },
    );
  }
}
