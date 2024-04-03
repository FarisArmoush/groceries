import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/user_data/user_data_cubit.dart';
import 'package:groceries/utils/extenstions/date_time_parser_extension.dart';

class UserCreationMetaDataListTile extends StatelessWidget {
  const UserCreationMetaDataListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final creationDate = context.read<UserDataCubit>().state.user?.creationDate;
    return ListTile(
      title: Text(AppTranslations.accountSettings.accountMetaData),
      subtitle: Text(creationDate.toString().toDDofMMYYYY()),
    );
  }
}
