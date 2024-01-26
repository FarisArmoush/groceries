part of '../data_sources.dart';

class AuthenticationDataSource {
  const AuthenticationDataSource({
    required this.firebaseAuth,
    required this.firestore,
    required this.storage,
  });

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

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
          .then((user) async {
        final defaultImageUrl = await storage
            .ref()
            .child('default-user-image.png')
            .getDownloadURL();
        await firestore.collection(FirestoreKeys.users).doc(user.user!.uid).set(
          {
            'creationDate': DateTime.timestamp(),
            'email': registerParam.email,
            'id': user.user!.uid,
            'image': defaultImageUrl,
            'displayName': registerParam.displayName,
          },
        );
        await firebaseAuth.currentUser?.updatePhotoURL(defaultImageUrl);
        await firebaseAuth.currentUser?.updateDisplayName(
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
      await firestore
          .collection(FirestoreKeys.users)
          .doc(currentUser?.uid)
          .delete();
      await currentUser?.delete();
    } on FirebaseAuthException catch (e) {
      throw DeleteAccountException.fromCode(e.code);
    } catch (_) {
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

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
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
              firestore
                  .collection(FirestoreKeys.users)
                  .doc(currentUser!.uid)
                  .update(
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
            (_) => firestore
                .collection(FirestoreKeys.users)
                .doc(currentUser!.uid)
                .update(
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

// TODO(FarisArmoush): Implement Proper Error Handling.
  Future<void> updateImage(File file) async {
    try {
      await storage.ref().child('user_image').delete();
      await storage.ref().child('user_image').putFile(file);

      await firestore
          .collection(FirestoreKeys.users)
          .doc(currentUser!.uid)
          .update({
        'image': image,
      });
    } on FirebaseException catch (e) {
      throw Exception(e.code);
    } catch (_) {
      throw Exception();
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
  String? get image => currentUser?.photoURL;
}
