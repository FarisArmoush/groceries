part of '../create_list.dart';

class CreateListTextField extends StatelessWidget {
  const CreateListTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateListBloc, CreateListState>(
      buildWhen: (previous, current) => previous.listName != current.listName,
      builder: (context, state) {
        return AppTextField(
          labelText: AppTranslations.general.listName,
          validator: (value) => state.listName.validator(value ?? ''),
          errorText: state.listName.displayError,
          onChanged: (value) => context.read<CreateListBloc>().add(
                CreateListEvent.nameChanged(value),
              ),
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
        );
      },
    );
  }
}
