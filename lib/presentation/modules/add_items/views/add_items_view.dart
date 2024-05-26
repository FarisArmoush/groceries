import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/modules/add_items/bloc/add_items_bloc.dart';
import 'package:groceries/presentation/modules/add_items/widgets/add_items_categories_list.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/error_state.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/presentation/widgets/sliver_sized_box.dart';

class AddItemsView extends StatefulWidget {
  const AddItemsView({super.key});

  @override
  State<AddItemsView> createState() => _AddItemsViewState();
}

class _AddItemsViewState extends State<AddItemsView> {
  @override
  void initState() {
    context.read<AddItemsBloc>().add(const AddItemsEvent.getParentCategories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddItemsBloc, AddItemsState>(
      listener: _listener,
      listenWhen: (previous, current) => previous.status != current.status,
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Scaffold(
          appBar: state.status.when(
            loading: AppBar.new,
            initial: AppBar.new,
            failure: (_) => AppBar(),
            success: () => null,
          ),
          body: state.status.when(
            initial: AppLoadingIndicator.new,
            loading: AppLoadingIndicator.new,
            failure: (error) => ErrorState(title: Text(error)),
            success: () => CustomScrollView(
              slivers: [
                GroceriesAppBar(
                  largeTitle: Text(Translations.addItems.addItems),
                  middle: Text(Translations.addItems.addItems),
                ),
                const SliverToBoxAdapter(
                  child: AddItemsCategoriesList(),
                ),
                SliverSizedBox(
                  height: context.deviceHeight * 0.1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _listener(BuildContext context, AddItemsState state) {
    state.status.whenOrNull(
      failure: (error) => ScaffoldMessenger.of(context).showSnackBar(
        AppSnackBars.error(error: error),
      ),
    );
  }
}
