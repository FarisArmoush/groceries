part of '../create_list.dart';

class CreateListView extends StatefulWidget {
  const CreateListView({super.key});

  @override
  State<CreateListView> createState() => _CreateListViewState();
}

class _CreateListViewState extends State<CreateListView> {
  @override
  void initState() {
    context.read<CreateListBloc>().add(const CreateListEvent.getIcons());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateListBloc, CreateListState>(
      listenWhen: (previous, current) => previous != current,
      listener: _listener,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppTranslations.createGroceryList.createNewList),
          leading: BackButton(
            onPressed: () => showModalBottomSheet<void>(
              elevation: 0,
              context: context,
              builder: (context) => const CancelBottomSheet(),
            ),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          padding: AppPaddings.scaffoldPadding(context),
          children: [
            const CreateListTextField(),
            SizedBox(
              height: context.deviceHeight * 0.05,
            ),
            const CreateListIconsGrid(),
            Divider(
              height: context.deviceHeight * 0.1,
            ),
            const InvitePeopleToListText(),
            SizedBox(
              height: context.deviceHeight * 0.04,
            ),
            const InviteToListButtons(),
            SizedBox(
              height: context.deviceHeight * 0.06,
            ),
          ],
        ),
        persistentFooterButtons: const [
          CreateListButton(),
        ],
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
