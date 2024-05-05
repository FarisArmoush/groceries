import 'package:groceries/data/data_sources/interfaces/user_management_data_source.dart';
import 'package:groceries/data/data_sources/remote/firebase_user_management_data_source.dart';
import 'package:groceries/domain/repositories/user_management_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserManagementRepository)
class UserManagementRepositoryImpl implements UserManagementRepository {
  const UserManagementRepositoryImpl(
    @Named.from(FirebaseUserManagementDataSource) this._dataSource,
  );

  final UserManagementDataSource _dataSource;
  @override
  Future<void> updateDisplayName(String? displayName) {
    return _dataSource.updateDisplayName(displayName);
  }

  @override
  Future<void> updateEmail(String? email) {
    return _dataSource.updateEmail(email);
  }
}
