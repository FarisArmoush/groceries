import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/interfaces/authentication_data_source.dart';
import 'package:groceries/data/data_sources/remote/firebase_authentication_data_source.dart';
import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends AuthenticationRepository {
  const AuthenticationRepositoryImpl(
    @Named.from(FirebaseAuthenticationDataSource) this._dataSource,
  );

  final AuthenticationDataSource _dataSource;
  @override
  Stream<User?> get authStateChanges =>
      _dataSource.authStateChanges as Stream<User?>;

  @override
  UserModel? get currentUser => _dataSource.currentUser;

  @override
  Future<void> signUpWithEmailAndPassword(RegisterParam registerParam) =>
      _dataSource.signUpWithEmailAndPassword(registerParam);

  @override
  Future<void> deleteAccount() => _dataSource.deleteAccount();

  @override
  Future<void> logout() => _dataSource.logout();

  @override
  Future<void> signInWithEmailAndPassword(LoginParam loginParam) =>
      _dataSource.signInWithEmailAndPassword(loginParam);

  @override
  Future<void> sendPasswordResetEmail(String? email) =>
      _dataSource.sendPasswordResetEmail(email);

  @override
  Future<void> updateDisplayName(String? displayName) =>
      _dataSource.updateDisplayName(displayName);

  @override
  Future<void> updateEmail(String? email) => _dataSource.updateEmail(email);

  @override
  Future<void> updatePassword(String? password) =>
      _dataSource.updatePassword(password);

  @override
  Future<void> sendVerificationEmail() => _dataSource.sendVerificationEmail();
}
