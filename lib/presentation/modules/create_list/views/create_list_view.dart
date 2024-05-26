import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries/presentation/common/app_paddings.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/create_list/bloc/create_list_bloc.dart';
import 'package:groceries/presentation/modules/create_list/widgets/create_list_button.dart';
import 'package:groceries/presentation/modules/create_list/widgets/create_list_icons_grid.dart';
import 'package:groceries/presentation/modules/create_list/widgets/create_list_text_field.dart';
import 'package:groceries/presentation/modules/create_list/widgets/invite_people_to_list_text.dart';
import 'package:groceries/presentation/modules/create_list/widgets/invite_to_list_buttons.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/cancel_bottom_sheet.dart';

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
          title: Text(Translations.createGroceryList.createNewList),
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
          padding: AppPaddings.scaffold(context),
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
        context.pushReplacementNamed(AppRoute.listCreatedSuccessfully.named);
      },
      failure: (error) {
        context.pushReplacementNamed(AppRoute.listCreatedUnsuccessfully.named);
      },
    );
  }
}
