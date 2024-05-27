import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:groceries/data/data_sources/interfaces/authentication_data_source.dart';
import 'package:groceries/data/models/user/user_model.dart';
import 'package:groceries/shared/exceptions/app_network_exception.dart';
import 'package:groceries/shared/logger.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: AuthenticationDataSource)
class FirebaseAuthenticationDataSource implements AuthenticationDataSource {
  const FirebaseAuthenticationDataSource();

  FirebaseAuth get _firebaseAuth => FirebaseAuth.instance;
  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  @override
  Stream<UserModel?> get authStateChanges {
    return _firebaseAuth.userChanges().map(
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
    final user = _firebaseAuth.currentUser;
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
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
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
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((user) {
        final setData = {
          'creationDate': DateTime.timestamp(),
          'email': email,
          'id': user.user?.uid,
          'image': '',
          'displayName': name,
        };
        _firestore.collection('users').doc(user.user?.uid).set(setData);
        _firebaseAuth.currentUser?.updateDisplayName(name);
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
  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
      logger.info('logged out succesfully');
    } on FirebaseAuthException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.message ?? '');
    } catch (e) {
      logger.error('Error logging out', e);
      throw const AppNetworkException();
    }
  }
}
