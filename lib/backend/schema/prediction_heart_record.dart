import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PredictionHeartRecord extends FirestoreRecord {
  PredictionHeartRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Age" field.
  double? _age;
  double get age => _age ?? 0.0;
  bool hasAge() => _age != null;

  // "AnyHealthcare" field.
  double? _anyHealthcare;
  double get anyHealthcare => _anyHealthcare ?? 0.0;
  bool hasAnyHealthcare() => _anyHealthcare != null;

  // "BMI" field.
  double? _bmi;
  double get bmi => _bmi ?? 0.0;
  bool hasBmi() => _bmi != null;

  // "CholCheck" field.
  double? _cholCheck;
  double get cholCheck => _cholCheck ?? 0.0;
  bool hasCholCheck() => _cholCheck != null;

  // "DiffWalk" field.
  double? _diffWalk;
  double get diffWalk => _diffWalk ?? 0.0;
  bool hasDiffWalk() => _diffWalk != null;

  // "Fruits" field.
  double? _fruits;
  double get fruits => _fruits ?? 0.0;
  bool hasFruits() => _fruits != null;

  // "GenHlth" field.
  double? _genHlth;
  double get genHlth => _genHlth ?? 0.0;
  bool hasGenHlth() => _genHlth != null;

  // "HighBP" field.
  double? _highBP;
  double get highBP => _highBP ?? 0.0;
  bool hasHighBP() => _highBP != null;

  // "HighChol" field.
  double? _highChol;
  double get highChol => _highChol ?? 0.0;
  bool hasHighChol() => _highChol != null;

  // "MentHlth" field.
  double? _mentHlth;
  double get mentHlth => _mentHlth ?? 0.0;
  bool hasMentHlth() => _mentHlth != null;

  // "NoDocbcCost" field.
  double? _noDocbcCost;
  double get noDocbcCost => _noDocbcCost ?? 0.0;
  bool hasNoDocbcCost() => _noDocbcCost != null;

  // "PhysActivity" field.
  double? _physActivity;
  double get physActivity => _physActivity ?? 0.0;
  bool hasPhysActivity() => _physActivity != null;

  // "Sex" field.
  double? _sex;
  double get sex => _sex ?? 0.0;
  bool hasSex() => _sex != null;

  // "Smoker" field.
  double? _smoker;
  double get smoker => _smoker ?? 0.0;
  bool hasSmoker() => _smoker != null;

  // "Stroke" field.
  double? _stroke;
  double get stroke => _stroke ?? 0.0;
  bool hasStroke() => _stroke != null;

  // "Veggies" field.
  double? _veggies;
  double get veggies => _veggies ?? 0.0;
  bool hasVeggies() => _veggies != null;

  // "PhysHlth" field.
  double? _physHlth;
  double get physHlth => _physHlth ?? 0.0;
  bool hasPhysHlth() => _physHlth != null;

  // "output" field.
  double? _output;
  double get output => _output ?? 0.0;
  bool hasOutput() => _output != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "health_ref" field.
  DocumentReference? _healthRef;
  DocumentReference? get healthRef => _healthRef;
  bool hasHealthRef() => _healthRef != null;

  // "HvyAlcoholConsump" field.
  double? _hvyAlcoholConsump;
  double get hvyAlcoholConsump => _hvyAlcoholConsump ?? 0.0;
  bool hasHvyAlcoholConsump() => _hvyAlcoholConsump != null;

  void _initializeFields() {
    _age = castToType<double>(snapshotData['Age']);
    _anyHealthcare = castToType<double>(snapshotData['AnyHealthcare']);
    _bmi = castToType<double>(snapshotData['BMI']);
    _cholCheck = castToType<double>(snapshotData['CholCheck']);
    _diffWalk = castToType<double>(snapshotData['DiffWalk']);
    _fruits = castToType<double>(snapshotData['Fruits']);
    _genHlth = castToType<double>(snapshotData['GenHlth']);
    _highBP = castToType<double>(snapshotData['HighBP']);
    _highChol = castToType<double>(snapshotData['HighChol']);
    _mentHlth = castToType<double>(snapshotData['MentHlth']);
    _noDocbcCost = castToType<double>(snapshotData['NoDocbcCost']);
    _physActivity = castToType<double>(snapshotData['PhysActivity']);
    _sex = castToType<double>(snapshotData['Sex']);
    _smoker = castToType<double>(snapshotData['Smoker']);
    _stroke = castToType<double>(snapshotData['Stroke']);
    _veggies = castToType<double>(snapshotData['Veggies']);
    _physHlth = castToType<double>(snapshotData['PhysHlth']);
    _output = castToType<double>(snapshotData['output']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _healthRef = snapshotData['health_ref'] as DocumentReference?;
    _hvyAlcoholConsump = castToType<double>(snapshotData['HvyAlcoholConsump']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prediction_heart');

  static Stream<PredictionHeartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PredictionHeartRecord.fromSnapshot(s));

  static Future<PredictionHeartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PredictionHeartRecord.fromSnapshot(s));

  static PredictionHeartRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PredictionHeartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PredictionHeartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PredictionHeartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PredictionHeartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PredictionHeartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPredictionHeartRecordData({
  double? age,
  double? anyHealthcare,
  double? bmi,
  double? cholCheck,
  double? diffWalk,
  double? fruits,
  double? genHlth,
  double? highBP,
  double? highChol,
  double? mentHlth,
  double? noDocbcCost,
  double? physActivity,
  double? sex,
  double? smoker,
  double? stroke,
  double? veggies,
  double? physHlth,
  double? output,
  DateTime? timestamp,
  DocumentReference? healthRef,
  double? hvyAlcoholConsump,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Age': age,
      'AnyHealthcare': anyHealthcare,
      'BMI': bmi,
      'CholCheck': cholCheck,
      'DiffWalk': diffWalk,
      'Fruits': fruits,
      'GenHlth': genHlth,
      'HighBP': highBP,
      'HighChol': highChol,
      'MentHlth': mentHlth,
      'NoDocbcCost': noDocbcCost,
      'PhysActivity': physActivity,
      'Sex': sex,
      'Smoker': smoker,
      'Stroke': stroke,
      'Veggies': veggies,
      'PhysHlth': physHlth,
      'output': output,
      'timestamp': timestamp,
      'health_ref': healthRef,
      'HvyAlcoholConsump': hvyAlcoholConsump,
    }.withoutNulls,
  );

  return firestoreData;
}

class PredictionHeartRecordDocumentEquality
    implements Equality<PredictionHeartRecord> {
  const PredictionHeartRecordDocumentEquality();

  @override
  bool equals(PredictionHeartRecord? e1, PredictionHeartRecord? e2) {
    return e1?.age == e2?.age &&
        e1?.anyHealthcare == e2?.anyHealthcare &&
        e1?.bmi == e2?.bmi &&
        e1?.cholCheck == e2?.cholCheck &&
        e1?.diffWalk == e2?.diffWalk &&
        e1?.fruits == e2?.fruits &&
        e1?.genHlth == e2?.genHlth &&
        e1?.highBP == e2?.highBP &&
        e1?.highChol == e2?.highChol &&
        e1?.mentHlth == e2?.mentHlth &&
        e1?.noDocbcCost == e2?.noDocbcCost &&
        e1?.physActivity == e2?.physActivity &&
        e1?.sex == e2?.sex &&
        e1?.smoker == e2?.smoker &&
        e1?.stroke == e2?.stroke &&
        e1?.veggies == e2?.veggies &&
        e1?.physHlth == e2?.physHlth &&
        e1?.output == e2?.output &&
        e1?.timestamp == e2?.timestamp &&
        e1?.healthRef == e2?.healthRef &&
        e1?.hvyAlcoholConsump == e2?.hvyAlcoholConsump;
  }

  @override
  int hash(PredictionHeartRecord? e) => const ListEquality().hash([
        e?.age,
        e?.anyHealthcare,
        e?.bmi,
        e?.cholCheck,
        e?.diffWalk,
        e?.fruits,
        e?.genHlth,
        e?.highBP,
        e?.highChol,
        e?.mentHlth,
        e?.noDocbcCost,
        e?.physActivity,
        e?.sex,
        e?.smoker,
        e?.stroke,
        e?.veggies,
        e?.physHlth,
        e?.output,
        e?.timestamp,
        e?.healthRef,
        e?.hvyAlcoholConsump
      ]);

  @override
  bool isValidKey(Object? o) => o is PredictionHeartRecord;
}
