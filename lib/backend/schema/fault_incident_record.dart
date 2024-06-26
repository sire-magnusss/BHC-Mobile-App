import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FaultIncidentRecord extends FirestoreRecord {
  FaultIncidentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "request_id" field.
  DocumentReference? _requestId;
  DocumentReference? get requestId => _requestId;
  bool hasRequestId() => _requestId != null;

  // "fault_type" field.
  List<String>? _faultType;
  List<String> get faultType => _faultType ?? const [];
  bool hasFaultType() => _faultType != null;

  // "specific_incident" field.
  String? _specificIncident;
  String get specificIncident => _specificIncident ?? '';
  bool hasSpecificIncident() => _specificIncident != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "updated_time" field.
  DateTime? _updatedTime;
  DateTime? get updatedTime => _updatedTime;
  bool hasUpdatedTime() => _updatedTime != null;

  void _initializeFields() {
    _requestId = snapshotData['request_id'] as DocumentReference?;
    _faultType = getDataList(snapshotData['fault_type']);
    _specificIncident = snapshotData['specific_incident'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updatedTime = snapshotData['updated_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fault_incident');

  static Stream<FaultIncidentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FaultIncidentRecord.fromSnapshot(s));

  static Future<FaultIncidentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FaultIncidentRecord.fromSnapshot(s));

  static FaultIncidentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FaultIncidentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FaultIncidentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FaultIncidentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FaultIncidentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FaultIncidentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFaultIncidentRecordData({
  DocumentReference? requestId,
  String? specificIncident,
  DateTime? createdTime,
  DateTime? updatedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'request_id': requestId,
      'specific_incident': specificIncident,
      'created_time': createdTime,
      'updated_time': updatedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class FaultIncidentRecordDocumentEquality
    implements Equality<FaultIncidentRecord> {
  const FaultIncidentRecordDocumentEquality();

  @override
  bool equals(FaultIncidentRecord? e1, FaultIncidentRecord? e2) {
    const listEquality = ListEquality();
    return e1?.requestId == e2?.requestId &&
        listEquality.equals(e1?.faultType, e2?.faultType) &&
        e1?.specificIncident == e2?.specificIncident &&
        e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime;
  }

  @override
  int hash(FaultIncidentRecord? e) => const ListEquality().hash([
        e?.requestId,
        e?.faultType,
        e?.specificIncident,
        e?.createdTime,
        e?.updatedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is FaultIncidentRecord;
}
