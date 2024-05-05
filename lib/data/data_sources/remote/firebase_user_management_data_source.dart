import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/instances.dart';
import 'package:groceries/data/data_sources/interfaces/user_management_data_source.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:groceries/utils/logger.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: UserManagementDataSource)
class FirebaseUserManagementDataSource implements UserManagementDataSource {
  @override
  Future<void> updateDisplayName(String? displayName) async {
    try {
      await firebaseAuth.currentUser?.updateDisplayName(displayName).then(
            (_) => firestore
                .collection(FirestoreCollection.users)
                .doc(firebaseAuth.currentUser?.uid)
                .update({FirestoreField.displayName: displayName}),
          );
      logger.info('Updated display name');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      logger.error('Error updating display name');
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> updateEmail(String? email) async {
    if (email == null) throw const AppNetworkException();
    try {
      await firebaseAuth.currentUser?.verifyBeforeUpdateEmail(email).then(
            (_) => firestore
                .collection(FirestoreCollection.users)
                .doc(firebaseAuth.currentUser?.uid)
                .update({FirestoreField.email: email}),
          );
      logger.info('Updated email');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      logger.error('Error updating email');
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> updatePassword(String? password) async {
    if (password == null) throw const AppNetworkException();
    try {
      await firebaseAuth.currentUser?.updatePassword(password);
      logger.info('Updated password');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      logger.error('Failed to update password');
      throw const AppNetworkException();
    }
  }
}
