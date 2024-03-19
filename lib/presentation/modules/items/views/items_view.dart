import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/groceries_box_list.dart';
import 'package:groceries/presentation/modules/items/bloc/items_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/error_state.dart';
import 'package:groceries/presentation/widgets/groceries_app_bar.dart';
import 'package:groceries/presentation/widgets/sliver_sized_box.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class ItemsView extends StatefulWidget {
  const ItemsView({required this.categoryModel, super.key});

  final CategoryModel categoryModel;

  @override
  State<ItemsView> createState() => _ItemsViewState();
}

class _ItemsViewState extends State<ItemsView> {
  @override
  void initState() {
    context.read<ItemsBloc>().add(
          ItemsEvent.getItems(categoryId: widget.categoryModel.categoryId),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ItemsBloc, ItemsState>(
        buildWhen: (previous, current) =>
            previous.status != current.status ||
            previous.groceries != current.groceries,
        builder: (context, state) => state.status.when(
          initial: AppLoadingIndicator.new,
          loading: AppLoadingIndicator.new,
          failure: (error) => ErrorState(title: Text(error)),
          success: () {
            final categoryName = widget.categoryModel.name ?? '';
            return CustomScrollView(
              slivers: [
                GroceriesAppBar(
                  largeTitle: Text(categoryName),
                  middle: Text(categoryName),
                ),
                GroceriesBoxList(list: state.groceries).asSliver(),
                const SliverSizedBox(height: 24),
              ],
            );
          },
        ),
      ),
    );
  }
}
