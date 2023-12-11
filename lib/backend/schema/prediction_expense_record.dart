import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PredictionExpenseRecord extends FirestoreRecord {
  PredictionExpenseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "age" field.
  double? _age;
  double get age => _age ?? 0.0;
  bool hasAge() => _age != null;

  // "bmi" field.
  double? _bmi;
  double get bmi => _bmi ?? 0.0;
  bool hasBmi() => _bmi != null;

  // "children" field.
  double? _children;
  double get children => _children ?? 0.0;
  bool hasChildren() => _children != null;

  // "sex" field.
  double? _sex;
  double get sex => _sex ?? 0.0;
  bool hasSex() => _sex != null;

  // "smoker" field.
  double? _smoker;
  double get smoker => _smoker ?? 0.0;
  bool hasSmoker() => _smoker != null;

  // "steps" field.
  double? _steps;
  double get steps => _steps ?? 0.0;
  bool hasSteps() => _steps != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "output" field.
  int? _output;
  int get output => _output ?? 0;
  bool hasOutput() => _output != null;

  // "health_ref" field.
  DocumentReference? _healthRef;
  DocumentReference? get healthRef => _healthRef;
  bool hasHealthRef() => _healthRef != null;

  void _initializeFields() {
    _age = castToType<double>(snapshotData['age']);
    _bmi = castToType<double>(snapshotData['bmi']);
    _children = castToType<double>(snapshotData['children']);
    _sex = castToType<double>(snapshotData['sex']);
    _smoker = castToType<double>(snapshotData['smoker']);
    _steps = castToType<double>(snapshotData['steps']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _output = castToType<int>(snapshotData['output']);
    _healthRef = snapshotData['health_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prediction_expense');

  static Stream<PredictionExpenseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PredictionExpenseRecord.fromSnapshot(s));

  static Future<PredictionExpenseRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PredictionExpenseRecord.fromSnapshot(s));

  static PredictionExpenseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PredictionExpenseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PredictionExpenseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PredictionExpenseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PredictionExpenseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PredictionExpenseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPredictionExpenseRecordData({
  double? age,
  double? bmi,
  double? children,
  double? sex,
  double? smoker,
  double? steps,
  DateTime? timestamp,
  int? output,
  DocumentReference? healthRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'age': age,
      'bmi': bmi,
      'children': children,
      'sex': sex,
      'smoker': smoker,
      'steps': steps,
      'timestamp': timestamp,
      'output': output,
      'health_ref': healthRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PredictionExpenseRecordDocumentEquality
    implements Equality<PredictionExpenseRecord> {
  const PredictionExpenseRecordDocumentEquality();

  @override
  bool equals(PredictionExpenseRecord? e1, PredictionExpenseRecord? e2) {
    return e1?.age == e2?.age &&
        e1?.bmi == e2?.bmi &&
        e1?.children == e2?.children &&
        e1?.sex == e2?.sex &&
        e1?.smoker == e2?.smoker &&
        e1?.steps == e2?.steps &&
        e1?.timestamp == e2?.timestamp &&
        e1?.output == e2?.output &&
        e1?.healthRef == e2?.healthRef;
  }

  @override
  int hash(PredictionExpenseRecord? e) => const ListEquality().hash([
        e?.age,
        e?.bmi,
        e?.children,
        e?.sex,
        e?.smoker,
        e?.steps,
        e?.timestamp,
        e?.output,
        e?.healthRef
      ]);

  @override
  bool isValidKey(Object? o) => o is PredictionExpenseRecord;
}
