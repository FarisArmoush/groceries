part of '../account_settings.dart';

class UserCreationMetaDataListTile extends StatelessWidget {
  const UserCreationMetaDataListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final creationDate = context.read<UserDataCubit>().creationDate;
    return ListTile(
      title: Text(AppTranslations.accountSettings.accountMetaData),
      subtitle: Text(creationDate ?? ''),
    );
  }
}
