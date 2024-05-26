import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/instances.dart';
import 'package:groceries/data/data_sources/interfaces/user_management_data_source.dart';
import 'package:groceries/shared/exceptions/app_network_exception.dart';
import 'package:groceries/shared/logger.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: UserManagementDataSource)
class FirebaseUserManagementDataSource implements UserManagementDataSource {
  @override
  Future<void> updateDisplayName(String? displayName) async {
    try {
      await firebaseAuth.currentUser?.updateDisplayName(displayName).then(
            (_) => firestore
                .collection('users')
                .doc(firebaseAuth.currentUser?.uid)
                .update({'displayName': displayName}),
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
                .collection('users')
                .doc(firebaseAuth.currentUser?.uid)
                .update({'email': email}),
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

  @override
  Future<void> deleteAccount() async {
    try {
      await firestore
          .collection('users')
          .doc(firebaseAuth.currentUser?.uid)
          .delete();
      await firebaseAuth.currentUser?.delete();
      logger.info('Deleted account');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      logger.error('Error deleting account');
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String? email) async {
    if (email == null) throw const AppNetworkException();

    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      logger.info('Sent password reset email');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      logger.error('Error sending password reset email');
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> sendVerificationEmail() async {
    try {
      await firebaseAuth.currentUser?.sendEmailVerification();
      logger.info('Sent verification email');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      logger.error('Failed to send verification email');
      throw const AppNetworkException();
    }
  }
}
