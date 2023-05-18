import 'package:cloud_firestore/cloud_firestore.dart';

/// {@template update_display_name_in_firestore_use_case}
/// A use case class for updating the display name in Firestore.
///
/// The [firestore] parameter is an instance of
/// [FirebaseFirestore] used to interact with Firestore.
/// {@endtemplate}
class UpdateDisplayNameInFirestoreUseCase {
  /// {@macro update_display_name_in_firestore_use_case}
  UpdateDisplayNameInFirestoreUseCase(this.firestore);

  final FirebaseFirestore firestore;

  /// Updates the display name in Firestore.
  ///
  /// The [newName] and [uid] parameters are
  /// required to update the display name.
  ///
  /// Throws an [Exception] with an error message if the update fails.
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
