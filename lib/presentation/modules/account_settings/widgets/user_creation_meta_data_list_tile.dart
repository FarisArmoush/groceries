import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';

class UserCreationMetaDataListTile extends StatelessWidget {
  const UserCreationMetaDataListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final creationTime = context
        .read<FirebaseAuthRepository>()
        .currentUser
        ?.metadata
        .creationTime
        .toString();
    return ListTile(
      title: Text(AppTranslations.accountCreationMetaData),
      subtitle: Text(creationTime ?? ''),
    );
  }
}
