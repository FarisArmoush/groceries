import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/interfaces/authentication_data_source.dart';
import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:groceries/utils/logger.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: AuthenticationDataSource)
class FirebaseAuthenticationDataSource implements AuthenticationDataSource {
  const FirebaseAuthenticationDataSource();

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @override
  Stream<UserModel?> get authStateChanges {
    return firebaseAuth.userChanges().map(
      (user) {
        if (user == null) return null;
        return UserModel(
          id: user.uid,
          name: user.displayName,
          email: user.email,
          imageUrl: user.photoURL,
          isVerified: user.emailVerified,
          creationDate: user.metadata.creationTime,
        );
      },
    );
  }

  @override
  UserModel? get currentUser {
    final user = firebaseAuth.currentUser;
    if (user == null) return null;
    return UserModel(
      id: user.tenantId,
      creationDate: user.metadata.creationTime,
      email: user.email,
      imageUrl: user.photoURL,
      name: user.displayName,
    );
  }

  @override
  Future<void> signInWithEmailAndPassword(LoginParam param) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: param.email,
        password: param.password,
      );
      logger.info('Logged in successfully');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword(RegisterParam param) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
        email: param.email,
        password: param.password,
      )
          .then((user) {
        final setData = {
          FirestoreField.creationDate: DateTime.timestamp(),
          FirestoreField.email: param.email,
          FirestoreField.id: user.user?.uid,
          FirestoreField.image: '',
          FirestoreField.displayName: param.displayName,
        };
        firestore
            .collection(FirestoreCollection.users)
            .doc(user.user?.uid)
            .set(setData);
        firebaseAuth.currentUser?.updateDisplayName(param.displayName);
      });
      logger.info('Register successfully');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.code);
    } catch (e) {
      logger.error('Error logging in', e);
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await firestore
          .collection(FirestoreCollection.users)
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
  Future<void> logout() async {
    try {
      await firebaseAuth.signOut();
      logger.info('logged out succesfully');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (e) {
      logger.error('Error logging out', e);
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
