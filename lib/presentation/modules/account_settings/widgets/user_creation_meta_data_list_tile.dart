import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';

class UserCreationMetaDataListTile extends StatelessWidget {
  const UserCreationMetaDataListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final creationDate = context.read<UserDataCubit>().state.user?.creationDate;
    return Visibility(
      visible: creationDate != null,
      child: ListTile(
        title: Text(Translations.accountSettings.accountMetaData),
        subtitle: Text(creationDate ?? ''),
      ),
    );
  }
}
