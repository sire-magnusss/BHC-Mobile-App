import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TotalServiceRecord extends FirestoreRecord {
  TotalServiceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "electric" field.
  String? _electric;
  String get electric => _electric ?? '';
  bool hasElectric() => _electric != null;

  // "other" field.
  String? _other;
  String get other => _other ?? '';
  bool hasOther() => _other != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "msg" field.
  String? _msg;
  String get msg => _msg ?? '';
  bool hasMsg() => _msg != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _electric = snapshotData['electric'] as String?;
    _other = snapshotData['other'] as String?;
    _id = castToType<int>(snapshotData['id']);
    _msg = snapshotData['msg'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('total_service');

  static Stream<TotalServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TotalServiceRecord.fromSnapshot(s));

  static Future<TotalServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TotalServiceRecord.fromSnapshot(s));

  static TotalServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TotalServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TotalServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TotalServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TotalServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TotalServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTotalServiceRecordData({
  String? type,
  String? electric,
  String? other,
  int? id,
  String? msg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'electric': electric,
      'other': other,
      'id': id,
      'msg': msg,
    }.withoutNulls,
  );

  return firestoreData;
}

class TotalServiceRecordDocumentEquality
    implements Equality<TotalServiceRecord> {
  const TotalServiceRecordDocumentEquality();

  @override
  bool equals(TotalServiceRecord? e1, TotalServiceRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.electric == e2?.electric &&
        e1?.other == e2?.other &&
        e1?.id == e2?.id &&
        e1?.msg == e2?.msg;
  }

  @override
  int hash(TotalServiceRecord? e) => const ListEquality()
      .hash([e?.type, e?.electric, e?.other, e?.id, e?.msg]);

  @override
  bool isValidKey(Object? o) => o is TotalServiceRecord;
}
