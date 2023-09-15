part of '../repositories.dart';

/// This abstract class defines a set of common methods
/// and properties for authentication repositories.
abstract class AuthenticationRepository {
  /// Signs in a user with email and password.
  ///
  /// Required parameters:
  /// * [email]: The email address of the user.
  /// * [password]: The password of the user.
  Future<void> signInWithEmailAndPassword(LoginParam loginParam);

  /// Signs up a user with email, password, and display name.
  ///
  /// Required parameters:
  /// * [email]: The email address of the user.
  /// * [password]: The password of the user.
  /// * [displayName]: The display name of the user.
  Future<void> signUpWithEmailAndPassword(RegisterParam registerParam);

  /// Sends an email to the user to reset their password
  Future<void> sendPasswordResetEmail(String email);

  /// Updates the user's display name
  Future<void> updateDisplayName(String displayName);

  /// Signs out the current user.
  Future<void> logOut();

  /// Deletes the account of the current user.
  Future<void> deleteAccount();

  /// updates the current user's email
  Future<void> updateEmail(String email);

  /// updates the current user's password
  Future<void> updatePassword(String password);

  /// Sends a verification Email
  Future<void> sendVerificationEmail();

  /// A stream of authentication state changes.
  Stream<Object?> get authStateChanges;

  /// The currently authenticated user.
  Object? get currentUser;

  String? get email;
  String? get displayName;
  String? get creationDate;
  bool? get emailVerified;
}
