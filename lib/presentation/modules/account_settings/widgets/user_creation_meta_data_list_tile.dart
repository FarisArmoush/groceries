import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';

class UserCreationMetaDataListTile extends StatelessWidget {
  const UserCreationMetaDataListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final creationTime = context
        .read<AuthBloc>()
        .authenticationRepository
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
