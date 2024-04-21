import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/interfaces/authentication_data_source.dart';
import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
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
          (user) => UserModel(
            id: user?.uid,
            name: user?.displayName,
            email: user?.email,
            imageUrl: user?.photoURL,
            isVerified: user?.emailVerified,
            creationDate: user?.metadata.creationTime,
          ),
        );
  }

  @override
  UserModel? get currentUser {
    final user = firebaseAuth.currentUser;
    return UserModel(
      id: user?.tenantId,
      creationDate: user?.metadata.creationTime,
      email: user?.email,
      imageUrl: user?.photoURL,
      name: user?.displayName,
    );
  }

  @override
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
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
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
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> logout() async {
    try {
      await firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String? email) async {
    if (email == null) throw const AppNetworkException();

    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> updateDisplayName(String? displayName) async {
    try {
      await firebaseAuth.currentUser?.updateDisplayName(displayName).then(
            (_) => {
              firestore
                  .collection(FirestoreCollection.users)
                  .doc(firebaseAuth.currentUser?.uid)
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
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> updatePassword(String? password) async {
    if (password == null) throw const AppNetworkException();
    try {
      await firebaseAuth.currentUser?.updatePassword(password);
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (_) {
      throw const AppNetworkException();
    }
  }

  @override
  Future<void> sendVerificationEmail() async {
    try {
      await firebaseAuth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      throw const AppNetworkException();
    }
  }
}