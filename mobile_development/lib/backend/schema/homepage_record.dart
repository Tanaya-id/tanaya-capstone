import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HomepageRecord extends FirestoreRecord {
  HomepageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  void _initializeFields() {
    _images = snapshotData['images'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('homepage');

  static Stream<HomepageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HomepageRecord.fromSnapshot(s));

  static Future<HomepageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HomepageRecord.fromSnapshot(s));

  static HomepageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HomepageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HomepageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HomepageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HomepageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HomepageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHomepageRecordData({
  String? images,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'images': images,
    }.withoutNulls,
  );

  return firestoreData;
}
