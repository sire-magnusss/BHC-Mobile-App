import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Appli11Record extends FirestoreRecord {
  Appli11Record._(
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
      FirebaseFirestore.instance.collection('appli11');

  static Stream<Appli11Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Appli11Record.fromSnapshot(s));

  static Future<Appli11Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Appli11Record.fromSnapshot(s));

  static Appli11Record fromSnapshot(DocumentSnapshot snapshot) =>
      Appli11Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Appli11Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Appli11Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Appli11Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Appli11Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppli11RecordData({
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class Appli11RecordDocumentEquality implements Equality<Appli11Record> {
  const Appli11RecordDocumentEquality();

  @override
  bool equals(Appli11Record? e1, Appli11Record? e2) {
    return e1?.type == e2?.type;
  }

  @override
  int hash(Appli11Record? e) => const ListEquality().hash([e?.type]);

  @override
  bool isValidKey(Object? o) => o is Appli11Record;
}
