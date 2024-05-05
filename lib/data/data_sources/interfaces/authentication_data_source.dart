import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

abstract interface class AuthenticationDataSource {
  Future<void> signInWithEmailAndPassword(LoginParam loginParam);

  Future<void> signUpWithEmailAndPassword(RegisterParam registerParam);

  Future<void> sendPasswordResetEmail(String? email);

  Future<void> logout();

  Future<void> deleteAccount();

  Future<void> sendVerificationEmail();

  Stream<UserModel?> get authStateChanges;

  UserModel? get currentUser;
}
