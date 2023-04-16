// ignore_for_file: strict_raw_type
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:groceries/app/core/exceptions/login_with_email_password_failure.dart';
import 'package:groceries/app/core/exceptions/login_with_google_failure.dart';
import 'package:groceries/app/core/exceptions/logout_failure.dart';
import 'package:groceries/app/core/exceptions/register_with_email_and_password_failure.dart';
import 'package:groceries/app/domain/repositories/base_auth_repository.dart';

/// Authentication Repository that uses the Firebase Auth Service
class FirebaseAuthRepository implements BaseAuthRepository {
  FirebaseAuthRepository({
    FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  @override
  Stream<User?> get authStateChanges => _firebaseAuth.userChanges().map(
        (fbUser) => fbUser,
      );

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future signUpWithEmailAndPassword({
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
            (currentUser) => FirebaseFirestore.instance
                .collection('users')
                .doc('${currentUser.user?.uid}')
                .set(
              {
                'uid': currentUser.user?.uid,
                'email': email,
                'displayName': displayName,
              },
            ),
          )
          .then(
        (value) {
          _firebaseAuth.currentUser!.updateDisplayName(displayName);
        },
      );
    } on FirebaseAuthException catch (e) {
      throw RegisterWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const RegisterWithEmailAndPasswordFailure();
    }
  }

  @override
  Future deleteAccount() async {
    throw UnimplementedError();
  }

  @override
  Future logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);
    } catch (_) {
      throw LogoutFailure();
    }
  }

  @override
  Future loginWithGoogle() async {
    try {
      await _googleSignIn.signIn();
    } catch (e) {
      throw LoginWithGoogleFailure.fromCode(e.toString());
    }
  }

  @override
  Future signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw LoginWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const LoginWithEmailAndPasswordFailure();
    }
  }
}
