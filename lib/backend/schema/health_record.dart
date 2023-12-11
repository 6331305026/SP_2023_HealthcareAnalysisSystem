import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HealthRecord extends FirestoreRecord {
  HealthRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "HighBP" field.
  int? _highBP;
  int get highBP => _highBP ?? 0;
  bool hasHighBP() => _highBP != null;

  // "HighChol" field.
  int? _highChol;
  int get highChol => _highChol ?? 0;
  bool hasHighChol() => _highChol != null;

  // "CholCheck" field.
  int? _cholCheck;
  int get cholCheck => _cholCheck ?? 0;
  bool hasCholCheck() => _cholCheck != null;

  // "Smoker" field.
  int? _smoker;
  int get smoker => _smoker ?? 0;
  bool hasSmoker() => _smoker != null;

  // "Stroke" field.
  int? _stroke;
  int get stroke => _stroke ?? 0;
  bool hasStroke() => _stroke != null;

  // "PhysActivity" field.
  int? _physActivity;
  int get physActivity => _physActivity ?? 0;
  bool hasPhysActivity() => _physActivity != null;

  // "Fruits" field.
  int? _fruits;
  int get fruits => _fruits ?? 0;
  bool hasFruits() => _fruits != null;

  // "Veggies" field.
  int? _veggies;
  int get veggies => _veggies ?? 0;
  bool hasVeggies() => _veggies != null;

  // "HvyAlcoholConsump" field.
  int? _hvyAlcoholConsump;
  int get hvyAlcoholConsump => _hvyAlcoholConsump ?? 0;
  bool hasHvyAlcoholConsump() => _hvyAlcoholConsump != null;

  // "AnyHealthcare" field.
  int? _anyHealthcare;
  int get anyHealthcare => _anyHealthcare ?? 0;
  bool hasAnyHealthcare() => _anyHealthcare != null;

  // "NoDocbcCost" field.
  int? _noDocbcCost;
  int get noDocbcCost => _noDocbcCost ?? 0;
  bool hasNoDocbcCost() => _noDocbcCost != null;

  // "GenHlth" field.
  int? _genHlth;
  int get genHlth => _genHlth ?? 0;
  bool hasGenHlth() => _genHlth != null;

  // "MentHlth" field.
  int? _mentHlth;
  int get mentHlth => _mentHlth ?? 0;
  bool hasMentHlth() => _mentHlth != null;

  // "PhysHlth" field.
  int? _physHlth;
  int get physHlth => _physHlth ?? 0;
  bool hasPhysHlth() => _physHlth != null;

  // "DiffWalk" field.
  int? _diffWalk;
  int get diffWalk => _diffWalk ?? 0;
  bool hasDiffWalk() => _diffWalk != null;

  // "Sex" field.
  int? _sex;
  int get sex => _sex ?? 0;
  bool hasSex() => _sex != null;

  // "Age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "Step" field.
  int? _step;
  int get step => _step ?? 0;
  bool hasStep() => _step != null;

  // "Children" field.
  int? _children;
  int get children => _children ?? 0;
  bool hasChildren() => _children != null;

  // "BMI" field.
  double? _bmi;
  double get bmi => _bmi ?? 0.0;
  bool hasBmi() => _bmi != null;

  // "DateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "person_ref" field.
  DocumentReference? _personRef;
  DocumentReference? get personRef => _personRef;
  bool hasPersonRef() => _personRef != null;

  void _initializeFields() {
    _highBP = castToType<int>(snapshotData['HighBP']);
    _highChol = castToType<int>(snapshotData['HighChol']);
    _cholCheck = castToType<int>(snapshotData['CholCheck']);
    _smoker = castToType<int>(snapshotData['Smoker']);
    _stroke = castToType<int>(snapshotData['Stroke']);
    _physActivity = castToType<int>(snapshotData['PhysActivity']);
    _fruits = castToType<int>(snapshotData['Fruits']);
    _veggies = castToType<int>(snapshotData['Veggies']);
    _hvyAlcoholConsump = castToType<int>(snapshotData['HvyAlcoholConsump']);
    _anyHealthcare = castToType<int>(snapshotData['AnyHealthcare']);
    _noDocbcCost = castToType<int>(snapshotData['NoDocbcCost']);
    _genHlth = castToType<int>(snapshotData['GenHlth']);
    _mentHlth = castToType<int>(snapshotData['MentHlth']);
    _physHlth = castToType<int>(snapshotData['PhysHlth']);
    _diffWalk = castToType<int>(snapshotData['DiffWalk']);
    _sex = castToType<int>(snapshotData['Sex']);
    _age = castToType<int>(snapshotData['Age']);
    _step = castToType<int>(snapshotData['Step']);
    _children = castToType<int>(snapshotData['Children']);
    _bmi = castToType<double>(snapshotData['BMI']);
    _dateTime = snapshotData['DateTime'] as DateTime?;
    _personRef = snapshotData['person_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('health');

  static Stream<HealthRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HealthRecord.fromSnapshot(s));

  static Future<HealthRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HealthRecord.fromSnapshot(s));

  static HealthRecord fromSnapshot(DocumentSnapshot snapshot) => HealthRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HealthRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HealthRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HealthRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HealthRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHealthRecordData({
  int? highBP,
  int? highChol,
  int? cholCheck,
  int? smoker,
  int? stroke,
  int? physActivity,
  int? fruits,
  int? veggies,
  int? hvyAlcoholConsump,
  int? anyHealthcare,
  int? noDocbcCost,
  int? genHlth,
  int? mentHlth,
  int? physHlth,
  int? diffWalk,
  int? sex,
  int? age,
  int? step,
  int? children,
  double? bmi,
  DateTime? dateTime,
  DocumentReference? personRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'HighBP': highBP,
      'HighChol': highChol,
      'CholCheck': cholCheck,
      'Smoker': smoker,
      'Stroke': stroke,
      'PhysActivity': physActivity,
      'Fruits': fruits,
      'Veggies': veggies,
      'HvyAlcoholConsump': hvyAlcoholConsump,
      'AnyHealthcare': anyHealthcare,
      'NoDocbcCost': noDocbcCost,
      'GenHlth': genHlth,
      'MentHlth': mentHlth,
      'PhysHlth': physHlth,
      'DiffWalk': diffWalk,
      'Sex': sex,
      'Age': age,
      'Step': step,
      'Children': children,
      'BMI': bmi,
      'DateTime': dateTime,
      'person_ref': personRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class HealthRecordDocumentEquality implements Equality<HealthRecord> {
  const HealthRecordDocumentEquality();

  @override
  bool equals(HealthRecord? e1, HealthRecord? e2) {
    return e1?.highBP == e2?.highBP &&
        e1?.highChol == e2?.highChol &&
        e1?.cholCheck == e2?.cholCheck &&
        e1?.smoker == e2?.smoker &&
        e1?.stroke == e2?.stroke &&
        e1?.physActivity == e2?.physActivity &&
        e1?.fruits == e2?.fruits &&
        e1?.veggies == e2?.veggies &&
        e1?.hvyAlcoholConsump == e2?.hvyAlcoholConsump &&
        e1?.anyHealthcare == e2?.anyHealthcare &&
        e1?.noDocbcCost == e2?.noDocbcCost &&
        e1?.genHlth == e2?.genHlth &&
        e1?.mentHlth == e2?.mentHlth &&
        e1?.physHlth == e2?.physHlth &&
        e1?.diffWalk == e2?.diffWalk &&
        e1?.sex == e2?.sex &&
        e1?.age == e2?.age &&
        e1?.step == e2?.step &&
        e1?.children == e2?.children &&
        e1?.bmi == e2?.bmi &&
        e1?.dateTime == e2?.dateTime &&
        e1?.personRef == e2?.personRef;
  }

  @override
  int hash(HealthRecord? e) => const ListEquality().hash([
        e?.highBP,
        e?.highChol,
        e?.cholCheck,
        e?.smoker,
        e?.stroke,
        e?.physActivity,
        e?.fruits,
        e?.veggies,
        e?.hvyAlcoholConsump,
        e?.anyHealthcare,
        e?.noDocbcCost,
        e?.genHlth,
        e?.mentHlth,
        e?.physHlth,
        e?.diffWalk,
        e?.sex,
        e?.age,
        e?.step,
        e?.children,
        e?.bmi,
        e?.dateTime,
        e?.personRef
      ]);

  @override
  bool isValidKey(Object? o) => o is HealthRecord;
}
