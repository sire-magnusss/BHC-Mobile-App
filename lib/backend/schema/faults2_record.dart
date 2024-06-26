import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Faults2Record extends FirestoreRecord {
  Faults2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('faults2');

  static Stream<Faults2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Faults2Record.fromSnapshot(s));

  static Future<Faults2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Faults2Record.fromSnapshot(s));

  static Faults2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Faults2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Faults2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Faults2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Faults2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Faults2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaults2RecordData({
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class Faults2RecordDocumentEquality implements Equality<Faults2Record> {
  const Faults2RecordDocumentEquality();

  @override
  bool equals(Faults2Record? e1, Faults2Record? e2) {
    return e1?.type == e2?.type;
  }

  @override
  int hash(Faults2Record? e) => const ListEquality().hash([e?.type]);

  @override
  bool isValidKey(Object? o) => o is Faults2Record;
}
