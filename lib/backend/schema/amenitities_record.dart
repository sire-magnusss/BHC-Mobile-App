import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AmenititiesRecord extends FirestoreRecord {
  AmenititiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "AC" field.
  bool? _ac;
  bool get ac => _ac ?? false;
  bool hasAc() => _ac != null;

  // "Heater" field.
  bool? _heater;
  bool get heater => _heater ?? false;
  bool hasHeater() => _heater != null;

  // "Pool" field.
  bool? _pool;
  bool get pool => _pool ?? false;
  bool hasPool() => _pool != null;

  // "DogFriendly" field.
  bool? _dogFriendly;
  bool get dogFriendly => _dogFriendly ?? false;
  bool hasDogFriendly() => _dogFriendly != null;

  // "Washer" field.
  bool? _washer;
  bool get washer => _washer ?? false;
  bool hasWasher() => _washer != null;

  // "Dryer" field.
  bool? _dryer;
  bool get dryer => _dryer ?? false;
  bool hasDryer() => _dryer != null;

  // "Workout" field.
  bool? _workout;
  bool get workout => _workout ?? false;
  bool hasWorkout() => _workout != null;

  // "Hip" field.
  bool? _hip;
  bool get hip => _hip ?? false;
  bool hasHip() => _hip != null;

  // "NightLife" field.
  bool? _nightLife;
  bool get nightLife => _nightLife ?? false;
  bool hasNightLife() => _nightLife != null;

  // "propertyRef" field.
  DocumentReference? _propertyRef;
  DocumentReference? get propertyRef => _propertyRef;
  bool hasPropertyRef() => _propertyRef != null;

  // "extraOutlets" field.
  bool? _extraOutlets;
  bool get extraOutlets => _extraOutlets ?? false;
  bool hasExtraOutlets() => _extraOutlets != null;

  // "evCharger" field.
  bool? _evCharger;
  bool get evCharger => _evCharger ?? false;
  bool hasEvCharger() => _evCharger != null;

  void _initializeFields() {
    _ac = snapshotData['AC'] as bool?;
    _heater = snapshotData['Heater'] as bool?;
    _pool = snapshotData['Pool'] as bool?;
    _dogFriendly = snapshotData['DogFriendly'] as bool?;
    _washer = snapshotData['Washer'] as bool?;
    _dryer = snapshotData['Dryer'] as bool?;
    _workout = snapshotData['Workout'] as bool?;
    _hip = snapshotData['Hip'] as bool?;
    _nightLife = snapshotData['NightLife'] as bool?;
    _propertyRef = snapshotData['propertyRef'] as DocumentReference?;
    _extraOutlets = snapshotData['extraOutlets'] as bool?;
    _evCharger = snapshotData['evCharger'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('amenitities');

  static Stream<AmenititiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AmenititiesRecord.fromSnapshot(s));

  static Future<AmenititiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AmenititiesRecord.fromSnapshot(s));

  static AmenititiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AmenititiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AmenititiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AmenititiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AmenititiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AmenititiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAmenititiesRecordData({
  bool? ac,
  bool? heater,
  bool? pool,
  bool? dogFriendly,
  bool? washer,
  bool? dryer,
  bool? workout,
  bool? hip,
  bool? nightLife,
  DocumentReference? propertyRef,
  bool? extraOutlets,
  bool? evCharger,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AC': ac,
      'Heater': heater,
      'Pool': pool,
      'DogFriendly': dogFriendly,
      'Washer': washer,
      'Dryer': dryer,
      'Workout': workout,
      'Hip': hip,
      'NightLife': nightLife,
      'propertyRef': propertyRef,
      'extraOutlets': extraOutlets,
      'evCharger': evCharger,
    }.withoutNulls,
  );

  return firestoreData;
}

class AmenititiesRecordDocumentEquality implements Equality<AmenititiesRecord> {
  const AmenititiesRecordDocumentEquality();

  @override
  bool equals(AmenititiesRecord? e1, AmenititiesRecord? e2) {
    return e1?.ac == e2?.ac &&
        e1?.heater == e2?.heater &&
        e1?.pool == e2?.pool &&
        e1?.dogFriendly == e2?.dogFriendly &&
        e1?.washer == e2?.washer &&
        e1?.dryer == e2?.dryer &&
        e1?.workout == e2?.workout &&
        e1?.hip == e2?.hip &&
        e1?.nightLife == e2?.nightLife &&
        e1?.propertyRef == e2?.propertyRef &&
        e1?.extraOutlets == e2?.extraOutlets &&
        e1?.evCharger == e2?.evCharger;
  }

  @override
  int hash(AmenititiesRecord? e) => const ListEquality().hash([
        e?.ac,
        e?.heater,
        e?.pool,
        e?.dogFriendly,
        e?.washer,
        e?.dryer,
        e?.workout,
        e?.hip,
        e?.nightLife,
        e?.propertyRef,
        e?.extraOutlets,
        e?.evCharger
      ]);

  @override
  bool isValidKey(Object? o) => o is AmenititiesRecord;
}
