import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userCity" field.
  String? _userCity;
  String get userCity => _userCity ?? '';
  bool hasUserCity() => _userCity != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "numberProperties" field.
  int? _numberProperties;
  int get numberProperties => _numberProperties ?? 0;
  bool hasNumberProperties() => _numberProperties != null;

  // "plot_number" field.
  String? _plotNumber;
  String get plotNumber => _plotNumber ?? '';
  bool hasPlotNumber() => _plotNumber != null;

  // "house_address" field.
  String? _houseAddress;
  String get houseAddress => _houseAddress ?? '';
  bool hasHouseAddress() => _houseAddress != null;

  // "profile_picture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  bool hasProfilePicture() => _profilePicture != null;

  // "background_picture" field.
  String? _backgroundPicture;
  String get backgroundPicture => _backgroundPicture ?? '';
  bool hasBackgroundPicture() => _backgroundPicture != null;

  // "omang_id" field.
  String? _omangId;
  String get omangId => _omangId ?? '';
  bool hasOmangId() => _omangId != null;

  // "current_employer" field.
  String? _currentEmployer;
  String get currentEmployer => _currentEmployer ?? '';
  bool hasCurrentEmployer() => _currentEmployer != null;

  // "employer_contacts" field.
  String? _employerContacts;
  String get employerContacts => _employerContacts ?? '';
  bool hasEmployerContacts() => _employerContacts != null;

  // "job_title" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "omang_img" field.
  String? _omangImg;
  String get omangImg => _omangImg ?? '';
  bool hasOmangImg() => _omangImg != null;

  // "bank_statement" field.
  String? _bankStatement;
  String get bankStatement => _bankStatement ?? '';
  bool hasBankStatement() => _bankStatement != null;

  void _initializeFields() {
    _userCity = snapshotData['userCity'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _bio = snapshotData['bio'] as String?;
    _numberProperties = castToType<int>(snapshotData['numberProperties']);
    _plotNumber = snapshotData['plot_number'] as String?;
    _houseAddress = snapshotData['house_address'] as String?;
    _profilePicture = snapshotData['profile_picture'] as String?;
    _backgroundPicture = snapshotData['background_picture'] as String?;
    _omangId = snapshotData['omang_id'] as String?;
    _currentEmployer = snapshotData['current_employer'] as String?;
    _employerContacts = snapshotData['employer_contacts'] as String?;
    _jobTitle = snapshotData['job_title'] as String?;
    _omangImg = snapshotData['omang_img'] as String?;
    _bankStatement = snapshotData['bank_statement'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? userCity,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? bio,
  int? numberProperties,
  String? plotNumber,
  String? houseAddress,
  String? profilePicture,
  String? backgroundPicture,
  String? omangId,
  String? currentEmployer,
  String? employerContacts,
  String? jobTitle,
  String? omangImg,
  String? bankStatement,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userCity': userCity,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'bio': bio,
      'numberProperties': numberProperties,
      'plot_number': plotNumber,
      'house_address': houseAddress,
      'profile_picture': profilePicture,
      'background_picture': backgroundPicture,
      'omang_id': omangId,
      'current_employer': currentEmployer,
      'employer_contacts': employerContacts,
      'job_title': jobTitle,
      'omang_img': omangImg,
      'bank_statement': bankStatement,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.userCity == e2?.userCity &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.bio == e2?.bio &&
        e1?.numberProperties == e2?.numberProperties &&
        e1?.plotNumber == e2?.plotNumber &&
        e1?.houseAddress == e2?.houseAddress &&
        e1?.profilePicture == e2?.profilePicture &&
        e1?.backgroundPicture == e2?.backgroundPicture &&
        e1?.omangId == e2?.omangId &&
        e1?.currentEmployer == e2?.currentEmployer &&
        e1?.employerContacts == e2?.employerContacts &&
        e1?.jobTitle == e2?.jobTitle &&
        e1?.omangImg == e2?.omangImg &&
        e1?.bankStatement == e2?.bankStatement;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.userCity,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.bio,
        e?.numberProperties,
        e?.plotNumber,
        e?.houseAddress,
        e?.profilePicture,
        e?.backgroundPicture,
        e?.omangId,
        e?.currentEmployer,
        e?.employerContacts,
        e?.jobTitle,
        e?.omangImg,
        e?.bankStatement
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
