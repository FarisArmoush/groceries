import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/authentication_data_source.dart';
import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl extends AuthenticationRepository {
  const AuthenticationRepositoryImpl(
    this._authenticationDataSource,
  );

  final AuthenticationDataSource _authenticationDataSource;
  @override
  Stream<User?> get authStateChanges =>
      _authenticationDataSource.authStateChanges;

  @override
  UserModel? get currentUser => _authenticationDataSource.currentUser;

  @override
  Future<void> signUpWithEmailAndPassword(RegisterParam registerParam) =>
      _authenticationDataSource.signUpWithEmailAndPassword(registerParam);

  @override
  Future<void> deleteAccount() => _authenticationDataSource.deleteAccount();

  @override
  Future<void> logOut() => _authenticationDataSource.logOut();

  @override
  Future<void> signInWithEmailAndPassword(LoginParam loginParam) =>
      _authenticationDataSource.signInWithEmailAndPassword(loginParam);

  @override
  Future<void> sendPasswordResetEmail(String? email) =>
      _authenticationDataSource.sendPasswordResetEmail(email);

  @override
  Future<void> updateDisplayName(String? displayName) =>
      _authenticationDataSource.updateDisplayName(displayName);

  @override
  Future<void> updateEmail(String? email) =>
      _authenticationDataSource.updateEmail(email);

  @override
  Future<void> updatePassword(String? password) =>
      _authenticationDataSource.updatePassword(password);

  @override
  Future<void> sendVerificationEmail() =>
      _authenticationDataSource.sendVerificationEmail();

  @override
  String? get displayName => _authenticationDataSource.displayName;

  @override
  String? get email => _authenticationDataSource.email;

  @override
  bool? get emailVerified => _authenticationDataSource.emailVerified;

  @override
  String? get creationDate => _authenticationDataSource.creationDate;
}
