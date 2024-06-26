import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceRequestsRecord extends FirestoreRecord {
  ServiceRequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "request_id" field.
  String? _requestId;
  String get requestId => _requestId ?? '';
  bool hasRequestId() => _requestId != null;

  // "plot_number" field.
  String? _plotNumber;
  String get plotNumber => _plotNumber ?? '';
  bool hasPlotNumber() => _plotNumber != null;

  // "contact_details" field.
  String? _contactDetails;
  String get contactDetails => _contactDetails ?? '';
  bool hasContactDetails() => _contactDetails != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "updated_time" field.
  DateTime? _updatedTime;
  DateTime? get updatedTime => _updatedTime;
  bool hasUpdatedTime() => _updatedTime != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "request_type" field.
  List<String>? _requestType;
  List<String> get requestType => _requestType ?? const [];
  bool hasRequestType() => _requestType != null;

  // "assigned_team" field.
  DocumentReference? _assignedTeam;
  DocumentReference? get assignedTeam => _assignedTeam;
  bool hasAssignedTeam() => _assignedTeam != null;

  // "severity" field.
  List<String>? _severity;
  List<String> get severity => _severity ?? const [];
  bool hasSeverity() => _severity != null;

  void _initializeFields() {
    _requestId = snapshotData['request_id'] as String?;
    _plotNumber = snapshotData['plot_number'] as String?;
    _contactDetails = snapshotData['contact_details'] as String?;
    _status = snapshotData['status'] as String?;
    _description = snapshotData['description'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updatedTime = snapshotData['updated_time'] as DateTime?;
    _userId = snapshotData['user_id'] as DocumentReference?;
    _category = getDataList(snapshotData['category']);
    _requestType = getDataList(snapshotData['request_type']);
    _assignedTeam = snapshotData['assigned_team'] as DocumentReference?;
    _severity = getDataList(snapshotData['severity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ServiceRequests');

  static Stream<ServiceRequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceRequestsRecord.fromSnapshot(s));

  static Future<ServiceRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceRequestsRecord.fromSnapshot(s));

  static ServiceRequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceRequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceRequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceRequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceRequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceRequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceRequestsRecordData({
  String? requestId,
  String? plotNumber,
  String? contactDetails,
  String? status,
  String? description,
  DateTime? createdTime,
  DateTime? updatedTime,
  DocumentReference? userId,
  DocumentReference? assignedTeam,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'request_id': requestId,
      'plot_number': plotNumber,
      'contact_details': contactDetails,
      'status': status,
      'description': description,
      'created_time': createdTime,
      'updated_time': updatedTime,
      'user_id': userId,
      'assigned_team': assignedTeam,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceRequestsRecordDocumentEquality
    implements Equality<ServiceRequestsRecord> {
  const ServiceRequestsRecordDocumentEquality();

  @override
  bool equals(ServiceRequestsRecord? e1, ServiceRequestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.requestId == e2?.requestId &&
        e1?.plotNumber == e2?.plotNumber &&
        e1?.contactDetails == e2?.contactDetails &&
        e1?.status == e2?.status &&
        e1?.description == e2?.description &&
        e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime &&
        e1?.userId == e2?.userId &&
        listEquality.equals(e1?.category, e2?.category) &&
        listEquality.equals(e1?.requestType, e2?.requestType) &&
        e1?.assignedTeam == e2?.assignedTeam &&
        listEquality.equals(e1?.severity, e2?.severity);
  }

  @override
  int hash(ServiceRequestsRecord? e) => const ListEquality().hash([
        e?.requestId,
        e?.plotNumber,
        e?.contactDetails,
        e?.status,
        e?.description,
        e?.createdTime,
        e?.updatedTime,
        e?.userId,
        e?.category,
        e?.requestType,
        e?.assignedTeam,
        e?.severity
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiceRequestsRecord;
}
