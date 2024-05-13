import 'package:groceries/data/models/user/user_model.dart';

abstract interface class AuthenticationDataSource {
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  Future<void> sendPasswordResetEmail(String? email);

  Future<void> logout();

  Future<void> deleteAccount();

  Future<void> sendVerificationEmail();

  Stream<UserModel?> get authStateChanges;

  UserModel? get currentUser;
}
