// ignore_for_file: strict_raw_type

/// This abstract class defines a set of common methods
/// and properties for authentication repositories.
abstract class BaseAuthRepository {
  /// Signs in a user with email and password.
  ///
  /// Required parameters:
  /// * [email]: The email address of the user.
  /// * [password]: The password of the user.
  Future signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  /// Signs up a user with email, password, and display name.
  ///
  /// Required parameters:
  /// * [email]: The email address of the user.
  /// * [password]: The password of the user.
  /// * [displayName]: The display name of the user.
  Future signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String displayName,
  });

  /// Sends an email to the user to reset their password
  Future sendPasswordResetEmail({required String email});

  /// Signs in a user with Google.
  Future loginWithGoogle();

  /// Signs out the current user.
  Future logOut();

  /// Deletes the account of the current user.
  Future deleteAccount();

  /// A stream of authentication state changes.
  Stream get authStateChanges;

  /// The currently authenticated user.
  dynamic get currentUser;
}
