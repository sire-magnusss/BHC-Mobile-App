import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Services3Record extends FirestoreRecord {
  Services3Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "hardware" field.
  String? _hardware;
  String get hardware => _hardware ?? '';
  bool hasHardware() => _hardware != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _hardware = snapshotData['hardware'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services3');

  static Stream<Services3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Services3Record.fromSnapshot(s));

  static Future<Services3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Services3Record.fromSnapshot(s));

  static Services3Record fromSnapshot(DocumentSnapshot snapshot) =>
      Services3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Services3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Services3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Services3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Services3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServices3RecordData({
  String? type,
  String? hardware,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'hardware': hardware,
    }.withoutNulls,
  );

  return firestoreData;
}

class Services3RecordDocumentEquality implements Equality<Services3Record> {
  const Services3RecordDocumentEquality();

  @override
  bool equals(Services3Record? e1, Services3Record? e2) {
    return e1?.type == e2?.type && e1?.hardware == e2?.hardware;
  }

  @override
  int hash(Services3Record? e) =>
      const ListEquality().hash([e?.type, e?.hardware]);

  @override
  bool isValidKey(Object? o) => o is Services3Record;
}
