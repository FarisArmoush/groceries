part of '../repositories.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl(
    this._authenticationDataSource,
  );

  final AuthenticationDataSource _authenticationDataSource;
  @override
  Stream<User?> get authStateChanges =>
      _authenticationDataSource.authStateChanges;

  @override
  User? get currentUser => _authenticationDataSource.currentUser;

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
