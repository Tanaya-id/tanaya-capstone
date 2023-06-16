import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EditpassRecord extends FirestoreRecord {
  EditpassRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('editpass');

  static Stream<EditpassRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EditpassRecord.fromSnapshot(s));

  static Future<EditpassRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EditpassRecord.fromSnapshot(s));

  static EditpassRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EditpassRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EditpassRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EditpassRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EditpassRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EditpassRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEditpassRecordData({
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}
