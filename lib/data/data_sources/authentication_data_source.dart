import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthenticationDataSource {
  const AuthenticationDataSource();

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  Stream<User?> get authStateChanges => firebaseAuth.userChanges().map(
        (fbUser) => fbUser,
      );

  User? get currentUser => firebaseAuth.currentUser;

  Future<void> signInWithEmailAndPassword(LoginParam param) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: param.email,
        password: param.password,
      );
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  Future<void> signUpWithEmailAndPassword(RegisterParam param) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
        email: param.email,
        password: param.password,
      )
          .then((user) {
        firestore.collection(FirestoreCollection.users).doc(user.user?.uid).set(
          {
            FirestoreField.creationDate: DateTime.timestamp(),
            FirestoreField.email: param.email,
            FirestoreField.id: user.user?.uid,
            FirestoreField.image: '',
            FirestoreField.displayName: param.displayName,
          },
        );
        firebaseAuth.currentUser?.updateDisplayName(
          param.displayName,
        );
      });
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  Future<void> deleteAccount() async {
    try {
      await firestore
          .collection(FirestoreCollection.users)
          .doc(currentUser?.uid)
          .delete();
      await currentUser?.delete();
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  Future<void> logOut() async {
    try {
      await Future.wait([
        firebaseAuth.signOut(),
      ]);
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  Future<void> sendPasswordResetEmail(String? email) async {
    if (email == null) {
      return;
    }
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  Future<void> updateDisplayName(String? displayName) async {
    try {
      await currentUser?.updateDisplayName(displayName).then(
            (_) => {
              firestore
                  .collection(FirestoreCollection.users)
                  .doc(currentUser?.uid)
                  .update(
                {
                  FirestoreField.displayName: displayName,
                },
              ),
            },
          );
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  Future<void> updateEmail(String? email) async {
    if (email == null) {
      return;
    }
    try {
      await currentUser?.verifyBeforeUpdateEmail(email).then(
            (_) => firestore
                .collection(FirestoreCollection.users)
                .doc(currentUser?.uid)
                .update({FirestoreField.email: email}),
          );
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  Future<void> updatePassword(String? password) async {
    if (password == null) {
      return;
    }
    try {
      await currentUser?.updatePassword(password);
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  Future<void> sendVerificationEmail() async {
    try {
      await currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  String? get email => currentUser?.email;
  String? get displayName => currentUser?.displayName;
  bool? get emailVerified => currentUser?.emailVerified;
  String? get creationDate => currentUser?.metadata.creationTime.toString();
}
