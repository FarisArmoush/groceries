import 'package:cloud_firestore/cloud_firestore.dart';

class UpdateDisplayNameInFirestoreUseCase {
  UpdateDisplayNameInFirestoreUseCase(this.firestore);

  final FirebaseFirestore firestore;

  Future<void> update({
    required String newName,
    required String uid,
  }) async {
    try {
      await firestore.collection('users').doc(uid).set(
        {
          'displayName': newName,
        },
      );
    } catch (e) {
      throw Exception('Failed to create user: $e');
    }
  }
}
