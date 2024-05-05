import 'package:groceries/data/data_sources/interfaces/authentication_data_source.dart';
import 'package:groceries/data/data_sources/remote/firebase_authentication_data_source.dart';
import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
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
  Future<void> sendVerificationEmail() => _dataSource.sendVerificationEmail();
}
