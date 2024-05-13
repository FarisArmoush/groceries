import 'package:groceries/data/models/user/user_model.dart';

/// This abstract class defines a set of common methods
/// and properties for authentication repositories.
abstract interface class AuthenticationRepository {
  /// Signs in a user with email and password.
  ///
  /// Required parameters:
  /// * [email]: The email address of the user.
  /// * [password]: The password of the user.
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs up a user with email, password, and display name.
  ///
  /// Required parameters:
  /// * [email]: The email address of the user.
  /// * [password]: The password of the user.
  /// * [displayName]: The display name of the user.
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });

  /// Sends an email to the user to reset their password
  Future<void> sendPasswordResetEmail(String? email);

  /// Signs out the current user.
  Future<void> logout();

  /// Deletes the account of the current user.
  Future<void> deleteAccount();

  /// Sends a verification Email
  Future<void> sendVerificationEmail();

  /// A stream of authentication state changes.
  Stream<UserModel?> get authStateChanges;

  /// The currently authenticated user.
  UserModel? get currentUser;
}
