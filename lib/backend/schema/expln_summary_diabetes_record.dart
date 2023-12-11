import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExplnSummaryDiabetesRecord extends FirestoreRecord {
  ExplnSummaryDiabetesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  bool hasType() => _type != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _type = castToType<int>(snapshotData['type']);
    _value = castToType<double>(snapshotData['value']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expln_summary_diabetes');

  static Stream<ExplnSummaryDiabetesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ExplnSummaryDiabetesRecord.fromSnapshot(s));

  static Future<ExplnSummaryDiabetesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ExplnSummaryDiabetesRecord.fromSnapshot(s));

  static ExplnSummaryDiabetesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExplnSummaryDiabetesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExplnSummaryDiabetesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExplnSummaryDiabetesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExplnSummaryDiabetesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExplnSummaryDiabetesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExplnSummaryDiabetesRecordData({
  String? name,
  int? type,
  double? value,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExplnSummaryDiabetesRecordDocumentEquality
    implements Equality<ExplnSummaryDiabetesRecord> {
  const ExplnSummaryDiabetesRecordDocumentEquality();

  @override
  bool equals(ExplnSummaryDiabetesRecord? e1, ExplnSummaryDiabetesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.type == e2?.type &&
        e1?.value == e2?.value;
  }

  @override
  int hash(ExplnSummaryDiabetesRecord? e) =>
      const ListEquality().hash([e?.name, e?.type, e?.value]);

  @override
  bool isValidKey(Object? o) => o is ExplnSummaryDiabetesRecord;
}
