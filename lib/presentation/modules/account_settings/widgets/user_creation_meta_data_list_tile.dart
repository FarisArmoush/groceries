import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/repositories/authentication_repository_impl.dart';

class UserCreationMetaDataListTile extends StatelessWidget {
  const UserCreationMetaDataListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final creationTime = context
        .read<AuthenticationRepositoryImpl>()
        .currentUser
        ?.metadata
        .creationTime
        .toString();
    return ListTile(
      title: Text(AppTranslations.accountMetaData),
      subtitle: Text(creationTime ?? ''),
    );
  }
}
