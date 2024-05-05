abstract interface class UserManagementDataSource {
  Future<void> updateEmail(String? email);

  Future<void> updatePassword(String? password);

  Future<void> updateDisplayName(String? displayName);
}
