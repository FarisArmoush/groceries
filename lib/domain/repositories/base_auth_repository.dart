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

  /// Updates the user's display name
  Future<void> updateDisplayName(String newName);

  /// Signs out the current user.
  Future<void> logOut();

  /// Deletes the account of the current user.
  Future<void> deleteAccount();

  /// updates the current user's email
  Future<void> updateEmail(String newEmail);

  /// updates the current user's password
  Future<void> updatePassword(String newPassword);

  /// Sends a verification Email
  Future<void> sendVerificationEmail();

  /// A stream of authentication state changes.
  Stream<dynamic> get authStateChanges;

  /// The currently authenticated user.
  dynamic get currentUser;
}
