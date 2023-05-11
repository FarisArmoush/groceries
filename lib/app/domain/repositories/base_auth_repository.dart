/// This abstract class defines a set of common methods
/// and properties for authentication repositories.
abstract class BaseAuthRepository {
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
    required String displayName,
  });

  /// Sends an email to the user to reset their password
  Future<void> sendPasswordResetEmail({required String email});

  Future<void> updateDisplayName(String newName);

  /// Signs in a user with Google.
  Future<void> loginWithGoogle();

  /// Signs out the current user.
  Future<void> logOut();

  /// Deletes the account of the current user.
  Future<void> deleteAccount();

  /// A stream of authentication state changes.
  Stream<dynamic> get authStateChanges;

  /// The currently authenticated user.
  dynamic get currentUser;
}
