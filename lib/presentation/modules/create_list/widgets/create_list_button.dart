import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/create_list/bloc/create_list_bloc.dart';
import 'package:groceries/presentation/widgets/app_loading_indicator.dart';
import 'package:groceries/utils/extenstions/widgets_as_extensions.dart';

class CreateListButton extends StatelessWidget {
  const CreateListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateListBloc, CreateListState>(
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.isValid != current.isValid,
      builder: (context, state) => state.status.maybeWhen(
        loading: AppLoadingIndicator.new,
        orElse: () => IgnorePointer(
          ignoring: state.formStatus.isInProgressOrSuccess,
          child: ElevatedButton(
            onPressed: state.isValid ? () => _submit(context, state) : null,
            child: Text(AppTranslations.createGroceryList.createList),
          ).bottomButtonSpacing(),
        ),
      ),
    );
  }

  void _submit(BuildContext context, CreateListState state) {
    context.read<CreateListBloc>().add(const CreateListEvent.submit());
  }
}
