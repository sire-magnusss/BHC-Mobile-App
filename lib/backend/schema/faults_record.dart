import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaultsRecord extends FirestoreRecord {
  FaultsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "service" field.
  List<String>? _service;
  List<String> get service => _service ?? const [];
  bool hasService() => _service != null;

  // "electric_fault" field.
  List<String>? _electricFault;
  List<String> get electricFault => _electricFault ?? const [];
  bool hasElectricFault() => _electricFault != null;

  // "capent_fault" field.
  List<String>? _capentFault;
  List<String> get capentFault => _capentFault ?? const [];
  bool hasCapentFault() => _capentFault != null;

  // "plumb_fault" field.
  List<String>? _plumbFault;
  List<String> get plumbFault => _plumbFault ?? const [];
  bool hasPlumbFault() => _plumbFault != null;

  // "daterecord" field.
  DateTime? _daterecord;
  DateTime? get daterecord => _daterecord;
  bool hasDaterecord() => _daterecord != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _service = getDataList(snapshotData['service']);
    _electricFault = getDataList(snapshotData['electric_fault']);
    _capentFault = getDataList(snapshotData['capent_fault']);
    _plumbFault = getDataList(snapshotData['plumb_fault']);
    _daterecord = snapshotData['daterecord'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('faults');

  static Stream<FaultsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FaultsRecord.fromSnapshot(s));

  static Future<FaultsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FaultsRecord.fromSnapshot(s));

  static FaultsRecord fromSnapshot(DocumentSnapshot snapshot) => FaultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FaultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FaultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FaultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FaultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaultsRecordData({
  int? id,
  DateTime? daterecord,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'daterecord': daterecord,
    }.withoutNulls,
  );

  return firestoreData;
}

class FaultsRecordDocumentEquality implements Equality<FaultsRecord> {
  const FaultsRecordDocumentEquality();

  @override
  bool equals(FaultsRecord? e1, FaultsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        listEquality.equals(e1?.service, e2?.service) &&
        listEquality.equals(e1?.electricFault, e2?.electricFault) &&
        listEquality.equals(e1?.capentFault, e2?.capentFault) &&
        listEquality.equals(e1?.plumbFault, e2?.plumbFault) &&
        e1?.daterecord == e2?.daterecord;
  }

  @override
  int hash(FaultsRecord? e) => const ListEquality().hash([
        e?.id,
        e?.service,
        e?.electricFault,
        e?.capentFault,
        e?.plumbFault,
        e?.daterecord
      ]);

  @override
  bool isValidKey(Object? o) => o is FaultsRecord;
}
