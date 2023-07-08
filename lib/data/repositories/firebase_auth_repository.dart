import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/domain/repositories/base_auth_repository.dart';
import 'package:groceries/domain/use_cases/set_user_data_in_firestore_use_case.dart';
import 'package:groceries/domain/use_cases/update_display_name_in_firestore_use_case.dart';
import 'package:groceries/domain/use_cases/update_email_in_firestore_use_case.dart';
import 'package:groceries/utils/exceptions/delete_account_exception.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';
import 'package:groceries/utils/exceptions/logout_failure.dart';
import 'package:groceries/utils/exceptions/register_with_email_and_password_exception.dart';
import 'package:groceries/utils/exceptions/send_password_reset_email_exception.dart';
import 'package:groceries/utils/exceptions/update_email_exception.dart';
import 'package:groceries/utils/exceptions/update_password_exception.dart';

/// Authentication Repository that uses the Firebase Auth Service
class FirebaseAuthRepository implements BaseAuthRepository {
  FirebaseAuthRepository({
    FirebaseAuth? firebaseAuth,
    FirebaseFirestore? firestore,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  @override
  Stream<User?> get authStateChanges => _firebaseAuth.userChanges().map(
        (fbUser) => fbUser,
      );

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then(
            (currentUser) => SetUserDataInFirestoreUseCase(_firestore).setData(
              uid: currentUser.user!.uid,
              email: email,
              displayName: displayName,
            ),
          )
          .then(
            (_) => _firebaseAuth.currentUser!.updateDisplayName(displayName),
          );
    } on FirebaseAuthException catch (e) {
      throw RegisterWithEmailAndPasswordException.fromCode(e.code);
    } catch (_) {
      throw const RegisterWithEmailAndPasswordException();
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await _firestore.collection('users').doc(currentUser?.uid).delete();
      await currentUser?.delete();
    } catch (e) {
      throw DeleteAccountException();
    }
  }

  @override
  Future<void> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
      ]);
    } catch (_) {
      throw LogoutFailure();
    }
  }

  @override
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw LoginWithEmailAndPasswordException.fromCode(e.code);
    } catch (_) {
      throw const LoginWithEmailAndPasswordException();
    }
  }

  @override
  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw SendPasswordResetEmailException.fromCode(e.code);
    } catch (_) {
      throw const SendPasswordResetEmailException();
    }
  }

  @override
  Future<void> updateDisplayName(String newName) async {
    try {
      await currentUser?.updateDisplayName(newName).then(
            (_) => {
              UpdateDisplayNameInFirestoreUseCase(_firestore).update(
                newName: newName,
                uid: currentUser!.uid,
              ),
            },
          );
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  @override
  Future<void> updateEmail(String newEmail) async {
    try {
      await currentUser?.updateEmail(newEmail).then(
            (_) => UpdateEmailInFirestoreUseCase(_firestore).setEmail(
              uid: currentUser?.uid,
              email: newEmail,
            ),
          );
    } on FirebaseAuthException catch (e) {
      throw UpdateEmailException.fromCode(e.code);
    } catch (_) {
      throw const UpdateEmailException();
    }
  }

  @override
  Future<void> updatePassword(String newPassword) async {
    try {
      await currentUser?.updatePassword(newPassword);
    } on FirebaseAuthException catch (e) {
      throw UpdatePasswordException.fromCode(e.code);
    } catch (_) {
      throw const UpdatePasswordException();
    }
  }
}
