import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/add_items/bloc/add_items_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/presentation/widgets/categories_list.dart';
import 'package:groceries/presentation/widgets/error_state.dart';

class AddItemsCategoriesList extends StatelessWidget {
  const AddItemsCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddItemsBloc, AddItemsState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.when(
          initial: AppLoadingIndicator.new,
          loading: AppLoadingIndicator.new,
          failure: (error) => ErrorState(title: Text(error)),
          success: () => CategoriesList(categories: state.parentCategories),
        );
      },
    );
  }
}
