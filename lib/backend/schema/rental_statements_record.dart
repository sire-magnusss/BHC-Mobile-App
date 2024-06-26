import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RentalStatementsRecord extends FirestoreRecord {
  RentalStatementsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "updated_time" field.
  DateTime? _updatedTime;
  DateTime? get updatedTime => _updatedTime;
  bool hasUpdatedTime() => _updatedTime != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _balance = castToType<double>(snapshotData['balance']);
    _details = snapshotData['details'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updatedTime = snapshotData['updated_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rental_statements');

  static Stream<RentalStatementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RentalStatementsRecord.fromSnapshot(s));

  static Future<RentalStatementsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RentalStatementsRecord.fromSnapshot(s));

  static RentalStatementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RentalStatementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RentalStatementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RentalStatementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RentalStatementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RentalStatementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRentalStatementsRecordData({
  DocumentReference? userId,
  double? balance,
  String? details,
  DateTime? createdTime,
  DateTime? updatedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'balance': balance,
      'details': details,
      'created_time': createdTime,
      'updated_time': updatedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class RentalStatementsRecordDocumentEquality
    implements Equality<RentalStatementsRecord> {
  const RentalStatementsRecordDocumentEquality();

  @override
  bool equals(RentalStatementsRecord? e1, RentalStatementsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.balance == e2?.balance &&
        e1?.details == e2?.details &&
        e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime;
  }

  @override
  int hash(RentalStatementsRecord? e) => const ListEquality().hash(
      [e?.userId, e?.balance, e?.details, e?.createdTime, e?.updatedTime]);

  @override
  bool isValidKey(Object? o) => o is RentalStatementsRecord;
}
