import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/modules/create_list/bloc/create_list_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class CreateListTextField extends StatelessWidget {
  const CreateListTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateListBloc, CreateListState>(
      buildWhen: (previous, current) => previous.listName != current.listName,
      builder: (context, state) {
        return AppTextField(
          labelText: Translations.general.listName,
          validator: (value) => state.listName.validator(value ?? ''),
          errorText: state.listName.displayError,
          onChanged: (value) => context.read<CreateListBloc>().add(
                CreateListEvent.nameChanged(value),
              ),
        );
      },
    );
  }
}
