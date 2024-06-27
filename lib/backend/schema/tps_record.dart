import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TpsRecord extends FirestoreRecord {
  TpsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _amount = castToType<int>(snapshotData['amount']);
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tps');

  static Stream<TpsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TpsRecord.fromSnapshot(s));

  static Future<TpsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TpsRecord.fromSnapshot(s));

  static TpsRecord fromSnapshot(DocumentSnapshot snapshot) => TpsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TpsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TpsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TpsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TpsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTpsRecordData({
  DateTime? date,
  int? amount,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'amount': amount,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class TpsRecordDocumentEquality implements Equality<TpsRecord> {
  const TpsRecordDocumentEquality();

  @override
  bool equals(TpsRecord? e1, TpsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.amount == e2?.amount &&
        e1?.type == e2?.type;
  }

  @override
  int hash(TpsRecord? e) =>
      const ListEquality().hash([e?.date, e?.amount, e?.type]);

  @override
  bool isValidKey(Object? o) => o is TpsRecord;
}
