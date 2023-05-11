import 'package:cloud_firestore/cloud_firestore.dart';

class SetUserDataInFirestoreUseCase {
  SetUserDataInFirestoreUseCase(this.firestore);
  final FirebaseFirestore firestore;

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
