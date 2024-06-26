import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicationsRecord extends FirestoreRecord {
  ApplicationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "documents" field.
  String? _documents;
  String get documents => _documents ?? '';
  bool hasDocuments() => _documents != null;

  // "status" field.
  List<String>? _status;
  List<String> get status => _status ?? const [];
  bool hasStatus() => _status != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "updated_time" field.
  DateTime? _updatedTime;
  DateTime? get updatedTime => _updatedTime;
  bool hasUpdatedTime() => _updatedTime != null;

  // "omang_id" field.
  String? _omangId;
  String get omangId => _omangId ?? '';
  bool hasOmangId() => _omangId != null;

  // "proof_of_income" field.
  String? _proofOfIncome;
  String get proofOfIncome => _proofOfIncome ?? '';
  bool hasProofOfIncome() => _proofOfIncome != null;

  // "Job_title" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "Employer_contacts" field.
  String? _employerContacts;
  String get employerContacts => _employerContacts ?? '';
  bool hasEmployerContacts() => _employerContacts != null;

  // "Current_Employer" field.
  String? _currentEmployer;
  String get currentEmployer => _currentEmployer ?? '';
  bool hasCurrentEmployer() => _currentEmployer != null;

  // "application_type" field.
  String? _applicationType;
  String get applicationType => _applicationType ?? '';
  bool hasApplicationType() => _applicationType != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _documents = snapshotData['documents'] as String?;
    _status = getDataList(snapshotData['status']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updatedTime = snapshotData['updated_time'] as DateTime?;
    _omangId = snapshotData['omang_id'] as String?;
    _proofOfIncome = snapshotData['proof_of_income'] as String?;
    _jobTitle = snapshotData['Job_title'] as String?;
    _employerContacts = snapshotData['Employer_contacts'] as String?;
    _currentEmployer = snapshotData['Current_Employer'] as String?;
    _applicationType = snapshotData['application_type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('applications');

  static Stream<ApplicationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicationsRecord.fromSnapshot(s));

  static Future<ApplicationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplicationsRecord.fromSnapshot(s));

  static ApplicationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicationsRecordData({
  DocumentReference? userId,
  String? documents,
  DateTime? createdTime,
  DateTime? updatedTime,
  String? omangId,
  String? proofOfIncome,
  String? jobTitle,
  String? employerContacts,
  String? currentEmployer,
  String? applicationType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'documents': documents,
      'created_time': createdTime,
      'updated_time': updatedTime,
      'omang_id': omangId,
      'proof_of_income': proofOfIncome,
      'Job_title': jobTitle,
      'Employer_contacts': employerContacts,
      'Current_Employer': currentEmployer,
      'application_type': applicationType,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplicationsRecordDocumentEquality
    implements Equality<ApplicationsRecord> {
  const ApplicationsRecordDocumentEquality();

  @override
  bool equals(ApplicationsRecord? e1, ApplicationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.documents == e2?.documents &&
        listEquality.equals(e1?.status, e2?.status) &&
        e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime &&
        e1?.omangId == e2?.omangId &&
        e1?.proofOfIncome == e2?.proofOfIncome &&
        e1?.jobTitle == e2?.jobTitle &&
        e1?.employerContacts == e2?.employerContacts &&
        e1?.currentEmployer == e2?.currentEmployer &&
        e1?.applicationType == e2?.applicationType;
  }

  @override
  int hash(ApplicationsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.documents,
        e?.status,
        e?.createdTime,
        e?.updatedTime,
        e?.omangId,
        e?.proofOfIncome,
        e?.jobTitle,
        e?.employerContacts,
        e?.currentEmployer,
        e?.applicationType
      ]);

  @override
  bool isValidKey(Object? o) => o is ApplicationsRecord;
}
