abstract interface class UserManagementRepository {
  Future<void> updateEmail(String? email);

  Future<void> updateDisplayName(String? displayName);
}
