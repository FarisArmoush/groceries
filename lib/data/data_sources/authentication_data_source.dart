import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/utils/exceptions/delete_account_exception.dart';
import 'package:groceries/utils/exceptions/login_with_email_password_exception.dart';
import 'package:groceries/utils/exceptions/logout_exception.dart';
import 'package:groceries/utils/exceptions/register_with_email_and_password_exception.dart';
import 'package:groceries/utils/exceptions/send_password_reset_email_exception.dart';
import 'package:groceries/utils/exceptions/update_email_exception.dart';
import 'package:groceries/utils/exceptions/update_password_exception.dart';
import 'package:groceries/utils/params/login_param/login_param.dart';
import 'package:groceries/utils/params/register_param/register_param.dart';

class AuthenticationDataSource {
  const AuthenticationDataSource({
    required this.firebaseAuth,
    required this.firestore,
  });

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  Stream<User?> get authStateChanges => firebaseAuth.userChanges().map(
        (fbUser) => fbUser,
      );

  User? get currentUser => firebaseAuth.currentUser;

  Future<void> signInWithEmailAndPassword(LoginParam loginParam) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
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
      await firebaseAuth
          .createUserWithEmailAndPassword(
        email: registerParam.email,
        password: registerParam.password,
      )
          .then((user) {
        firestore.collection('users').doc(user.user?.uid).set(
          {
            'creationDate': DateTime.timestamp(),
            'email': registerParam.email,
            'id': user.user?.uid,
            'image': '',
            'displayName': registerParam.displayName,
          },
        );
        firebaseAuth.currentUser?.updateDisplayName(
          registerParam.displayName,
        );
      });
    } on FirebaseAuthException catch (e) {
      throw RegisterWithEmailAndPasswordException.fromCode(e.code);
    } catch (_) {
      throw const RegisterWithEmailAndPasswordException();
    }
  }

  Future<void> deleteAccount() async {
    try {
      await firestore.collection('users').doc(currentUser?.uid).delete();
      await currentUser?.delete();
    } catch (e) {
      throw DeleteAccountException();
    }
  }

  Future<void> logOut() async {
    try {
      await Future.wait([
        firebaseAuth.signOut(),
      ]);
    } catch (_) {
      throw LogoutException();
    }
  }

  Future<void> sendPasswordResetEmail(String? email) async {
    if (email == null) {
      return;
    }
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw SendPasswordResetEmailException.fromCode(e.code);
    } catch (_) {
      throw const SendPasswordResetEmailException();
    }
  }

  Future<void> updateDisplayName(String? displayName) async {
    try {
      await currentUser?.updateDisplayName(displayName).then(
            (_) => {
              firestore.collection('users').doc(currentUser?.uid).update(
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

  Future<void> updateEmail(String? email) async {
    if (email == null) {
      return;
    }
    try {
      await currentUser?.updateEmail(email).then(
            (_) => firestore.collection('users').doc(currentUser?.uid).update(
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

  Future<void> updatePassword(String? password) async {
    if (password == null) {
      return;
    }
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