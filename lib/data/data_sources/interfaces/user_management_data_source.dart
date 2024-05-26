abstract interface class UserManagementDataSource {
  Future<void> updateEmail(String? email);

  Future<void> updatePassword(String? password);

  Future<void> updateDisplayName(String? displayName);

  Future<void> sendVerificationEmail();

  Future<void> deleteAccount();

  Future<void> sendPasswordResetEmail(String? email);
}
