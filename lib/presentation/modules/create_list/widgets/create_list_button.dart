import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/presentation/modules/create_list/bloc/create_list_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class CreateListButton extends StatelessWidget {
  const CreateListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateListBloc, CreateListState>(
      builder: (context, state) => state.status.maybeWhen(
        loading: AppLoadingIndicator.new,
        orElse: () => ElevatedButton(
          onPressed: state.isValid ? () => _submit(context, state) : null,
          child: Text(AppTranslations.createGroceryList.createList),
        ).bottomButtonSpacing(),
      ),
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.isValid != current.isValid,
    );
  }

  void _submit(BuildContext context, CreateListState state) {
    context.read<CreateListBloc>().add(
          CreateListEvent.createList(
            groceryListModel: GroceryListModel(
              id: null,
              name: state.listName.value,
              imageUrl: state.icon,
              items: null,
              members: null,
              creationDate: DateTime.now(),
            ),
          ),
        );
  }
}
