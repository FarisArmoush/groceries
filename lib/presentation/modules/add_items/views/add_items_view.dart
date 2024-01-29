import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/add_items/bloc/add_items_bloc.dart';
import 'package:groceries/presentation/modules/add_items/widgets/add_items_categories_list.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/app_snack_bars.dart';
import 'package:groceries/presentation/widgets/error_state.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/presentation/widgets/sliver_sized_box.dart';
import 'package:groceries/utils/extenstions/context_extensions.dart';

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
      listener: (context, state) {
        state.status.maybeWhen(
          failure: (error) => ScaffoldMessenger.of(context).showSnackBar(
            AppSnackBars.error(error: error),
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: state.status.maybeWhen(
            loading: AppBar.new,
            initial: AppBar.new,
            orElse: () => null,
          ),
          body: state.status.when(
            initial: AppLoadingIndicator.new,
            loading: AppLoadingIndicator.new,
            failure: (error) => ErrorState(title: Text(error)),
            success: () => CustomScrollView(
              slivers: [
                GroceriesAppBar(
                  largeTitle: Text(AppTranslations.addItems.addItems),
                  middle: Text(AppTranslations.addItems.addItems),
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
}
