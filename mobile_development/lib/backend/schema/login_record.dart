import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginRecord extends FirestoreRecord {
  LoginRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "emaillogin" field.
  String? _emaillogin;
  String get emaillogin => _emaillogin ?? '';
  bool hasEmaillogin() => _emaillogin != null;

  // "passwordlogin" field.
  int? _passwordlogin;
  int get passwordlogin => _passwordlogin ?? 0;
  bool hasPasswordlogin() => _passwordlogin != null;

  void _initializeFields() {
    _emaillogin = snapshotData['emaillogin'] as String?;
    _passwordlogin = snapshotData['passwordlogin'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('login');

  static Stream<LoginRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LoginRecord.fromSnapshot(s));

  static Future<LoginRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LoginRecord.fromSnapshot(s));

  static LoginRecord fromSnapshot(DocumentSnapshot snapshot) => LoginRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LoginRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LoginRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LoginRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LoginRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLoginRecordData({
  String? emaillogin,
  int? passwordlogin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'emaillogin': emaillogin,
      'passwordlogin': passwordlogin,
    }.withoutNulls,
  );

  return firestoreData;
}
