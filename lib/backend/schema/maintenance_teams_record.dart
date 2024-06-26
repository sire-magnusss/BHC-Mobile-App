import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaintenanceTeamsRecord extends FirestoreRecord {
  MaintenanceTeamsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "team_name" field.
  String? _teamName;
  String get teamName => _teamName ?? '';
  bool hasTeamName() => _teamName != null;

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

  void _initializeFields() {
    _teamName = snapshotData['team_name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updatedTime = snapshotData['updated_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('maintenance_teams');

  static Stream<MaintenanceTeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaintenanceTeamsRecord.fromSnapshot(s));

  static Future<MaintenanceTeamsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MaintenanceTeamsRecord.fromSnapshot(s));

  static MaintenanceTeamsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaintenanceTeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaintenanceTeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaintenanceTeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaintenanceTeamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaintenanceTeamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaintenanceTeamsRecordData({
  String? teamName,
  String? description,
  DateTime? createdTime,
  DateTime? updatedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'team_name': teamName,
      'description': description,
      'created_time': createdTime,
      'updated_time': updatedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaintenanceTeamsRecordDocumentEquality
    implements Equality<MaintenanceTeamsRecord> {
  const MaintenanceTeamsRecordDocumentEquality();

  @override
  bool equals(MaintenanceTeamsRecord? e1, MaintenanceTeamsRecord? e2) {
    return e1?.teamName == e2?.teamName &&
        e1?.description == e2?.description &&
        e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime;
  }

  @override
  int hash(MaintenanceTeamsRecord? e) => const ListEquality()
      .hash([e?.teamName, e?.description, e?.createdTime, e?.updatedTime]);

  @override
  bool isValidKey(Object? o) => o is MaintenanceTeamsRecord;
}
