import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/utils/exceptions/app_firestore_exception.dart';

class UpdateEmailInFirestoreUseCase {
  UpdateEmailInFirestoreUseCase(this.firestore);

  final FirebaseFirestore firestore;

  Future<void> setEmail({
    required String? uid,
    required String email,
  }) async {
    try {
      await firestore.collection('users').doc(uid).update(
        {'email': email},
      );
    } on FirebaseException catch (e) {
      throw AppFirestoreException.fromCode(e.code);
    } catch (_) {
      throw const AppFirestoreException();
    }
  }
}
