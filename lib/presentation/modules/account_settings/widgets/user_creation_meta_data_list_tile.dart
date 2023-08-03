part of '../account_settings.dart';

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
