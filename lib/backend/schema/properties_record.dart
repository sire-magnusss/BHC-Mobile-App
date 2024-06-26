import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesRecord extends FirestoreRecord {
  PropertiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "propertyName" field.
  String? _propertyName;
  String get propertyName => _propertyName ?? '';
  bool hasPropertyName() => _propertyName != null;

  // "propertyDescription" field.
  String? _propertyDescription;
  String get propertyDescription => _propertyDescription ?? '';
  bool hasPropertyDescription() => _propertyDescription != null;

  // "mainImage" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  bool hasMainImage() => _mainImage != null;

  // "propertyLocation" field.
  LatLng? _propertyLocation;
  LatLng? get propertyLocation => _propertyLocation;
  bool hasPropertyLocation() => _propertyLocation != null;

  // "propertyAddress" field.
  String? _propertyAddress;
  String get propertyAddress => _propertyAddress ?? '';
  bool hasPropertyAddress() => _propertyAddress != null;

  // "isDraft" field.
  bool? _isDraft;
  bool get isDraft => _isDraft ?? false;
  bool hasIsDraft() => _isDraft != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "propertyNeighborhood" field.
  String? _propertyNeighborhood;
  String get propertyNeighborhood => _propertyNeighborhood ?? '';
  bool hasPropertyNeighborhood() => _propertyNeighborhood != null;

  // "ratingSummary" field.
  double? _ratingSummary;
  double get ratingSummary => _ratingSummary ?? 0.0;
  bool hasRatingSummary() => _ratingSummary != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "lastUpdated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "isLive" field.
  bool? _isLive;
  bool get isLive => _isLive ?? false;
  bool hasIsLive() => _isLive != null;

  void _initializeFields() {
    _propertyName = snapshotData['propertyName'] as String?;
    _propertyDescription = snapshotData['propertyDescription'] as String?;
    _mainImage = snapshotData['mainImage'] as String?;
    _propertyLocation = snapshotData['propertyLocation'] as LatLng?;
    _propertyAddress = snapshotData['propertyAddress'] as String?;
    _isDraft = snapshotData['isDraft'] as bool?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _propertyNeighborhood = snapshotData['propertyNeighborhood'] as String?;
    _ratingSummary = castToType<double>(snapshotData['ratingSummary']);
    _price = castToType<int>(snapshotData['price']);
    _notes = snapshotData['notes'] as String?;
    _lastUpdated = snapshotData['lastUpdated'] as DateTime?;
    _isLive = snapshotData['isLive'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertiesRecord.fromSnapshot(s));

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertiesRecord.fromSnapshot(s));

  static PropertiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertiesRecordData({
  String? propertyName,
  String? propertyDescription,
  String? mainImage,
  LatLng? propertyLocation,
  String? propertyAddress,
  bool? isDraft,
  DocumentReference? userRef,
  String? propertyNeighborhood,
  double? ratingSummary,
  int? price,
  String? notes,
  DateTime? lastUpdated,
  bool? isLive,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'propertyName': propertyName,
      'propertyDescription': propertyDescription,
      'mainImage': mainImage,
      'propertyLocation': propertyLocation,
      'propertyAddress': propertyAddress,
      'isDraft': isDraft,
      'userRef': userRef,
      'propertyNeighborhood': propertyNeighborhood,
      'ratingSummary': ratingSummary,
      'price': price,
      'notes': notes,
      'lastUpdated': lastUpdated,
      'isLive': isLive,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertiesRecordDocumentEquality implements Equality<PropertiesRecord> {
  const PropertiesRecordDocumentEquality();

  @override
  bool equals(PropertiesRecord? e1, PropertiesRecord? e2) {
    return e1?.propertyName == e2?.propertyName &&
        e1?.propertyDescription == e2?.propertyDescription &&
        e1?.mainImage == e2?.mainImage &&
        e1?.propertyLocation == e2?.propertyLocation &&
        e1?.propertyAddress == e2?.propertyAddress &&
        e1?.isDraft == e2?.isDraft &&
        e1?.userRef == e2?.userRef &&
        e1?.propertyNeighborhood == e2?.propertyNeighborhood &&
        e1?.ratingSummary == e2?.ratingSummary &&
        e1?.price == e2?.price &&
        e1?.notes == e2?.notes &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.isLive == e2?.isLive;
  }

  @override
  int hash(PropertiesRecord? e) => const ListEquality().hash([
        e?.propertyName,
        e?.propertyDescription,
        e?.mainImage,
        e?.propertyLocation,
        e?.propertyAddress,
        e?.isDraft,
        e?.userRef,
        e?.propertyNeighborhood,
        e?.ratingSummary,
        e?.price,
        e?.notes,
        e?.lastUpdated,
        e?.isLive
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertiesRecord;
}
