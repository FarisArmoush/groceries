import 'package:cloud_firestore/cloud_firestore.dart';

/// {@template set_user_data_in_firestore_use_case}
/// A use case class for setting user data in Firestore.
///
/// The [firestore] parameter is an instance of
/// [FirebaseFirestore] used to interact with Firestore.
/// {@endtemplate}
class SetUserDataInFirestoreUseCase {
  /// {@macro set_user_data_in_firestore_use_case}
  SetUserDataInFirestoreUseCase(this.firestore);

  final FirebaseFirestore firestore;

  /// Sets user data in Firestore.
  ///
  /// The [uid], [email], and [displayName]
  /// parameters are required to set the user data.
  ///
  /// Throws an [Exception] with an error message if the user creation fails.
  Future<void> setData({
    required String uid,
    required String email,
    required String displayName,
  }) async {
    try {
      await firestore.collection('users').doc(uid).set(
        {
          'uid': uid,
          'email': email,
          'displayName': displayName,
        },
      );
    } catch (e) {
      throw Exception('Failed to create user: $e');
    }
  }
}
