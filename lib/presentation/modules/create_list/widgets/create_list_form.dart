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
          title: Text(AppTranslations.createNewList),
          leading: BackButton(
            onPressed: () => showDialog<CancelListCreationDialog>(
              context: context,
              builder: (context) => const CancelListCreationDialog(),
            ),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(32),
          children: [
            AppTextField(
              labelText: AppTranslations.listName,
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
              AppTranslations.invitePeopleToList,
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
              label: const Text('Create List'),
              icon: Assets.svg.icPlus.svg(
                color: context.theme.colorScheme.secondary,
              ),
              onPressed: () => context.read<CreateListBloc>().add(
                    CreateListRequested(),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  void _listener(BuildContext context, CreateListState state) {
    if (state is CreateListLoading) {
      showDialog<AppLoadingIndicator>(
        context: context,
        barrierDismissible: false,
        builder: (context) => const AppLoadingIndicator(),
      );
    }
    if (state is CreateListSucceded) {
      context.pushReplacementNamed(AppNamedRoutes.listCreatedSuccessfully);
    }
    if (state is CreateListFailed) {
      context.pushReplacementNamed(AppNamedRoutes.listCreatedUnsuccessfully);
    }
  }
}
