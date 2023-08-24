import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/utils/exceptions/delete_account_exception.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';
import 'package:groceries/utils/exceptions/logout_failure.dart';
import 'package:groceries/utils/exceptions/register_with_email_and_password_exception.dart';
import 'package:groceries/utils/exceptions/send_password_reset_email_exception.dart';
import 'package:groceries/utils/exceptions/update_email_exception.dart';
import 'package:groceries/utils/exceptions/update_password_exception.dart';
import 'package:groceries/utils/params/login_param/login_param.dart';
import 'package:groceries/utils/params/register_param/register_param.dart';

class AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSource({
    FirebaseAuth? firebaseAuth,
    FirebaseFirestore? firestore,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  Stream<User?> get authStateChanges => _firebaseAuth.userChanges().map(
        (fbUser) => fbUser,
      );

  User? get currentUser => _firebaseAuth.currentUser;

  Future<void> signInWithEmailAndPassword(LoginParam loginParam) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: loginParam.email,
        password: loginParam.password,
      );
    } on FirebaseAuthException catch (e) {
      throw LoginWithEmailAndPasswordException.fromCode(e.code);
    } catch (_) {
      throw const LoginWithEmailAndPasswordException();
    }
  }

  Future<void> signUpWithEmailAndPassword(RegisterParam registerParam) async {
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: registerParam.email,
            password: registerParam.password,
          )
          .then(
            (currentUser) =>
                _firestore.collection('users').doc(currentUser.user!.uid).set(
              {
                'uid': currentUser.user!.uid,
                'email': currentUser.user!.email,
                'displayName': registerParam.displayName,
              },
            ),
          )
          .then(
            (_) => _firebaseAuth.currentUser!.updateDisplayName(
              registerParam.displayName,
            ),
          );
    } on FirebaseAuthException catch (e) {
      throw RegisterWithEmailAndPasswordException.fromCode(e.code);
    } catch (_) {
      throw const RegisterWithEmailAndPasswordException();
    }
  }

  Future<void> deleteAccount() async {
    try {
      await _firestore.collection('users').doc(currentUser?.uid).delete();
      await currentUser?.delete();
    } catch (e) {
      throw DeleteAccountException();
    }
  }

  Future<void> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
      ]);
    } catch (_) {
      throw LogoutFailure();
    }
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw SendPasswordResetEmailException.fromCode(e.code);
    } catch (_) {
      throw const SendPasswordResetEmailException();
    }
  }

  Future<void> updateDisplayName(String displayName) async {
    try {
      await currentUser?.updateDisplayName(displayName).then(
            (_) => {
              _firestore.collection('users').doc(currentUser!.uid).update(
                {
                  'displayName': displayName,
                },
              ),
            },
          );
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    } catch (_) {
      throw Exception('Somethign');
    }
  }

  Future<void> updateEmail(String email) async {
    try {
      await currentUser?.updateEmail(email).then(
            (_) => _firestore.collection('users').doc(currentUser!.uid).update(
              {
                'email': email,
              },
            ),
          );
    } on FirebaseAuthException catch (e) {
      throw UpdateEmailException.fromCode(e.code);
    } catch (_) {
      throw const UpdateEmailException();
    }
  }

  Future<void> updatePassword(String password) async {
    try {
      await currentUser?.updatePassword(password);
    } on FirebaseAuthException catch (e) {
      throw UpdatePasswordException.fromCode(e.code);
    } catch (_) {
      throw const UpdatePasswordException();
    }
  }

  Future<void> sendVerificationEmail() async {
    try {
      await currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    } catch (_) {
      throw Exception('Something went wrong!');
    }
  }

  String? get email => currentUser?.email;
  String? get displayName => currentUser?.displayName;
  bool? get emailVerified => currentUser?.emailVerified;
  String? get creationDate => currentUser?.metadata.creationTime.toString();
}
