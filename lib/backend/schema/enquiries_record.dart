import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnquiriesRecord extends FirestoreRecord {
  EnquiriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "product_type" field.
  String? _productType;
  String get productType => _productType ?? '';
  bool hasProductType() => _productType != null;

  // "procedure" field.
  String? _procedure;
  String get procedure => _procedure ?? '';
  bool hasProcedure() => _procedure != null;

  // "housing_development" field.
  String? _housingDevelopment;
  String get housingDevelopment => _housingDevelopment ?? '';
  bool hasHousingDevelopment() => _housingDevelopment != null;

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
    _productType = snapshotData['product_type'] as String?;
    _procedure = snapshotData['procedure'] as String?;
    _housingDevelopment = snapshotData['housing_development'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updatedTime = snapshotData['updated_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enquiries');

  static Stream<EnquiriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnquiriesRecord.fromSnapshot(s));

  static Future<EnquiriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnquiriesRecord.fromSnapshot(s));

  static EnquiriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnquiriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnquiriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnquiriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnquiriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnquiriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnquiriesRecordData({
  DocumentReference? userId,
  String? productType,
  String? procedure,
  String? housingDevelopment,
  DateTime? createdTime,
  DateTime? updatedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'product_type': productType,
      'procedure': procedure,
      'housing_development': housingDevelopment,
      'created_time': createdTime,
      'updated_time': updatedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnquiriesRecordDocumentEquality implements Equality<EnquiriesRecord> {
  const EnquiriesRecordDocumentEquality();

  @override
  bool equals(EnquiriesRecord? e1, EnquiriesRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.productType == e2?.productType &&
        e1?.procedure == e2?.procedure &&
        e1?.housingDevelopment == e2?.housingDevelopment &&
        e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime;
  }

  @override
  int hash(EnquiriesRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.productType,
        e?.procedure,
        e?.housingDevelopment,
        e?.createdTime,
        e?.updatedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is EnquiriesRecord;
}
