import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/extensions/widgets_as_extensions.dart';
import 'package:groceries/presentation/modules/grocery_list_details/bloc/grocery_list_details_bloc.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/empty_grocery_list.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_app_bar.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_fab.dart';
import 'package:groceries/presentation/modules/grocery_list_details/widgets/grocery_list_details_form.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/error_state.dart';

class GroceryListDetailsView extends StatefulWidget {
  const GroceryListDetailsView({required this.uid, super.key});

  final String? uid;

  @override
  State<GroceryListDetailsView> createState() => _GroceryListDetailsViewState();
}

class _GroceryListDetailsViewState extends State<GroceryListDetailsView> {
  late final GroceryListDetailsBloc bloc;
  @override
  void initState() {
    bloc = context.read<GroceryListDetailsBloc>();
    bloc.add(
      GroceryListDetailsEvent.getDetails(uid: widget.uid),
    );
    super.initState();
  }

  @override
  void dispose() {
    bloc.add(const GroceryListDetailsEvent.resetState());

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryListDetailsBloc, GroceryListDetailsState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.groceryList != current.groceryList,
      builder: (context, state) {
        return state.status.maybeWhen(
          orElse: _buildLoading,
          failure: _buildFailure,
          success: () {
            final listModel = state.groceryList;
            final listIsEmpty = listModel?.items?.isEmpty ?? true;
            return Scaffold(
              body: SafeArea(
                bottom: false,
                child: CustomScrollView(
                  slivers: [
                    GroceryListDetailsAppBar(listModel: listModel),
                    if (listIsEmpty)
                      const EmptyGroceryList().asSliver()
                    else
                      GroceryListDetailsForm(listModel: listModel).asSliver(),
                  ],
                ),
              ),
              floatingActionButton: Visibility(
                visible: !listIsEmpty,
                child: const GroceryListDetailsFab(),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildLoading() {
    return Scaffold(
      appBar: AppBar(),
      body: const AppLoadingIndicator(),
    );
  }

  Widget _buildFailure(String error) {
    return Scaffold(
      appBar: AppBar(),
      body: ErrorState(
        title: Text(error),
      ),
    );
  }
}
