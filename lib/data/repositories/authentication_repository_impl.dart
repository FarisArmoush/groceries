import 'package:groceries/data/data_sources/interfaces/authentication_data_source.dart';
import 'package:groceries/data/data_sources/remote/firebase_authentication_data_source.dart';
import 'package:groceries/data/models/user/user_model.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  const AuthenticationRepositoryImpl(
    @Named.from(FirebaseAuthenticationDataSource) this._dataSource,
  );

  final AuthenticationDataSource _dataSource;
  @override
  Stream<UserModel?> get authStateChanges => _dataSource.authStateChanges;

  @override
  UserModel? get currentUser => _dataSource.currentUser;

  @override
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) =>
      _dataSource.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );

  @override
  Future<void> logout() => _dataSource.logout();

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      _dataSource.signInWithEmailAndPassword(email: email, password: password);
}
