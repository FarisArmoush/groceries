import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

abstract interface class AuthenticationDataSource {
  Future<void> signInWithEmailAndPassword(LoginParam loginParam);

  Future<void> signUpWithEmailAndPassword(RegisterParam registerParam);

  Future<void> sendPasswordResetEmail(String? email);

  Future<void> updateDisplayName(String? displayName);

  Future<void> logout();

  Future<void> deleteAccount();

  Future<void> updateEmail(String? email);

  Future<void> updatePassword(String? password);

  Future<void> sendVerificationEmail();

  Stream<Object?> get authStateChanges;

  UserModel? get currentUser;
}
