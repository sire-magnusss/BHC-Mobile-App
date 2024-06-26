import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Services2Record extends FirestoreRecord {
  Services2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "electrical" field.
  String? _electrical;
  String get electrical => _electrical ?? '';
  bool hasElectrical() => _electrical != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _electrical = snapshotData['electrical'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services2');

  static Stream<Services2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Services2Record.fromSnapshot(s));

  static Future<Services2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Services2Record.fromSnapshot(s));

  static Services2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Services2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Services2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Services2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Services2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Services2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServices2RecordData({
  String? type,
  String? electrical,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'electrical': electrical,
    }.withoutNulls,
  );

  return firestoreData;
}

class Services2RecordDocumentEquality implements Equality<Services2Record> {
  const Services2RecordDocumentEquality();

  @override
  bool equals(Services2Record? e1, Services2Record? e2) {
    return e1?.type == e2?.type && e1?.electrical == e2?.electrical;
  }

  @override
  int hash(Services2Record? e) =>
      const ListEquality().hash([e?.type, e?.electrical]);

  @override
  bool isValidKey(Object? o) => o is Services2Record;
}
