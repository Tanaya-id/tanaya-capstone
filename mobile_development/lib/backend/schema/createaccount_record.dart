import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateaccountRecord extends FirestoreRecord {
  CreateaccountRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  int? _password;
  int get password => _password ?? 0;
  bool hasPassword() => _password != null;

  // "confirmpass" field.
  int? _confirmpass;
  int get confirmpass => _confirmpass ?? 0;
  bool hasConfirmpass() => _confirmpass != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as int?;
    _confirmpass = snapshotData['confirmpass'] as int?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('createaccount');

  static Stream<CreateaccountRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CreateaccountRecord.fromSnapshot(s));

  static Future<CreateaccountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CreateaccountRecord.fromSnapshot(s));

  static CreateaccountRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CreateaccountRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CreateaccountRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CreateaccountRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CreateaccountRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CreateaccountRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCreateaccountRecordData({
  String? email,
  int? password,
  int? confirmpass,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'password': password,
      'confirmpass': confirmpass,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}
