abstract interface class UserManagementRepository {
  Future<void> updateEmail(String? email);

  Future<void> updateDisplayName(String? displayName);

  Future<void> sendVerificationEmail();

  Future<void> deleteAccount();

  Future<void> sendPasswordResetEmail(String? email);
}
